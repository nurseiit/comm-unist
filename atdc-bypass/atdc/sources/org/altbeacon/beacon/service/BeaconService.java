package org.altbeacon.beacon.service;

import android.annotation.TargetApi;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.BeaconParser;
import org.altbeacon.beacon.Region;
import org.altbeacon.beacon.distance.DistanceCalculator;
import org.altbeacon.beacon.distance.ModelSpecificDistanceCalculator;
import org.altbeacon.bluetooth.BluetoothCrashResolver;

@TargetApi(5)
public class BeaconService extends Service {
    public static final int MSG_SET_SCAN_PERIODS = 6;
    public static final int MSG_START_MONITORING = 4;
    public static final int MSG_START_RANGING = 2;
    public static final int MSG_STOP_MONITORING = 5;
    public static final int MSG_STOP_RANGING = 3;
    public static final String TAG = "BeaconService";
    private List<BeaconParser> beaconParsers;
    private long betweenScanPeriod = 0;
    private int bindCount = 0;
    private BluetoothAdapter bluetoothAdapter;
    private BluetoothCrashResolver bluetoothCrashResolver;
    private DistanceCalculator defaultDistanceCalculator = null;
    private Handler handler = new Handler();
    private Date lastBeaconDetectionTime = new Date();
    private long lastScanEndTime = 0;
    private long lastScanStartTime = 0;
    private Object leScanCallback;
    final Messenger mMessenger = new Messenger(new IncomingHandler(this));
    private Map<Region, MonitorState> monitoredRegionState = new HashMap();
    private long nextScanStartTime = 0;
    private int ongoing_notification_id = 1;
    private Map<Region, RangeState> rangedRegionState = new HashMap();
    private boolean scanCyclerStarted = false;
    private long scanPeriod = BeaconManager.DEFAULT_FOREGROUND_SCAN_PERIOD;
    private long scanStopTime = 0;
    private boolean scanning;
    private boolean scanningEnabled = false;
    private boolean scanningPaused;
    private List<Beacon> simulatedScanData = null;
    private HashSet<Beacon> trackedBeacons;
    int trackedBeaconsPacketCount;

    public class BeaconBinder extends Binder {
        public BeaconService getService() {
            Log.i(BeaconService.TAG, "getService of BeaconBinder called");
            return BeaconService.this;
        }
    }

    static class IncomingHandler extends Handler {
        private final WeakReference<BeaconService> mService;

        IncomingHandler(BeaconService beaconService) {
            this.mService = new WeakReference(beaconService);
        }

        public void handleMessage(Message message) {
            BeaconService beaconService = (BeaconService) this.mService.get();
            StartRMData startRMData = (StartRMData) message.obj;
            if (beaconService != null) {
                switch (message.what) {
                    case 2:
                        Log.i(BeaconService.TAG, "start ranging received");
                        beaconService.startRangingBeaconsInRegion(startRMData.getRegionData(), new Callback(startRMData.getCallbackPackageName()));
                        beaconService.setScanPeriods(startRMData.getScanPeriod(), startRMData.getBetweenScanPeriod());
                        return;
                    case 3:
                        Log.i(BeaconService.TAG, "stop ranging received");
                        beaconService.stopRangingBeaconsInRegion(startRMData.getRegionData());
                        beaconService.setScanPeriods(startRMData.getScanPeriod(), startRMData.getBetweenScanPeriod());
                        return;
                    case 4:
                        Log.i(BeaconService.TAG, "start monitoring received");
                        beaconService.startMonitoringBeaconsInRegion(startRMData.getRegionData(), new Callback(startRMData.getCallbackPackageName()));
                        beaconService.setScanPeriods(startRMData.getScanPeriod(), startRMData.getBetweenScanPeriod());
                        return;
                    case 5:
                        Log.i(BeaconService.TAG, "stop monitoring received");
                        beaconService.stopMonitoringBeaconsInRegion(startRMData.getRegionData());
                        beaconService.setScanPeriods(startRMData.getScanPeriod(), startRMData.getBetweenScanPeriod());
                        return;
                    case 6:
                        Log.i(BeaconService.TAG, "set scan intervals received");
                        beaconService.setScanPeriods(startRMData.getScanPeriod(), startRMData.getBetweenScanPeriod());
                        return;
                    default:
                        super.handleMessage(message);
                        return;
                }
            }
        }
    }

    private class ScanData {
        public BluetoothDevice device;
        public int rssi;
        public byte[] scanRecord;

        public ScanData(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            this.device = bluetoothDevice;
            this.rssi = i;
            this.scanRecord = bArr;
        }
    }

    private class ScanProcessor extends AsyncTask<ScanData, Void, Void> {
        /* Access modifiers changed, original: protected */
        public void onPostExecute(Void voidR) {
        }

        /* Access modifiers changed, original: protected */
        public void onPreExecute() {
        }

        /* Access modifiers changed, original: protected|varargs */
        public void onProgressUpdate(Void... voidArr) {
        }

        private ScanProcessor() {
        }

        /* synthetic */ ScanProcessor(BeaconService beaconService, AnonymousClass1 anonymousClass1) {
            this();
        }

        /* Access modifiers changed, original: protected|varargs */
        public Void doInBackground(ScanData... scanDataArr) {
            ScanData scanData = scanDataArr[0];
            Beacon beacon = null;
            for (BeaconParser fromScanData : BeaconService.this.beaconParsers) {
                beacon = fromScanData.fromScanData(scanData.scanRecord, scanData.rssi, scanData.device);
                if (beacon != null) {
                    break;
                }
            }
            if (beacon != null) {
                BeaconService.this.processBeaconFromScan(beacon);
            }
            BeaconService.this.bluetoothCrashResolver.notifyScannedDevice(scanData.device, (LeScanCallback) BeaconService.this.getLeScanCallback());
            return null;
        }
    }

    public IBinder onBind(Intent intent) {
        Log.i(TAG, "binding");
        this.bindCount++;
        return this.mMessenger.getBinder();
    }

    public boolean onUnbind(Intent intent) {
        Log.i(TAG, "unbinding");
        this.bindCount--;
        return false;
    }

    public void onCreate() {
        Log.i(TAG, "beaconService version adhoc is starting up");
        getBluetoothAdapter();
        this.bluetoothCrashResolver = new BluetoothCrashResolver(this);
        this.bluetoothCrashResolver.start();
        this.beaconParsers = BeaconManager.getInstanceForApplication(getApplicationContext()).getBeaconParsers();
        this.defaultDistanceCalculator = new ModelSpecificDistanceCalculator(this, BeaconManager.getDistanceModelUpdateUrl());
        Beacon.setDistanceCalculator(this.defaultDistanceCalculator);
        try {
            this.simulatedScanData = (List) Class.forName("org.altbeacon.beacon.SimulatedScanData").getField("beacons").get(null);
        } catch (ClassNotFoundException unused) {
            BeaconManager.logDebug(TAG, "No org.altbeacon.beacon.SimulatedScanData class exists.");
        } catch (Exception e) {
            Log.e(TAG, "Cannot get simulated Scan data.  Make sure your org.altbeacon.beacon.SimulatedScanData class defines a field with the signature 'public static List<Beacon> beacons'", e);
        }
    }

    @TargetApi(18)
    public void onDestroy() {
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to API 18.");
            return;
        }
        this.bluetoothCrashResolver.stop();
        Log.i(TAG, "onDestroy called.  stopping scanning");
        this.handler.removeCallbacksAndMessages(null);
        scanLeDevice(Boolean.valueOf(false));
        if (this.bluetoothAdapter != null) {
            try {
                getBluetoothAdapter().stopLeScan((LeScanCallback) getLeScanCallback());
            } catch (Exception e) {
                Log.w("Internal Android exception scanning for beacons: ", e);
            }
            this.lastScanEndTime = new Date().getTime();
        }
    }

    private boolean isInBackground() {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("bound client count:");
        stringBuilder.append(this.bindCount);
        BeaconManager.logDebug(str, stringBuilder.toString());
        return this.bindCount == 0;
    }

    public void startRangingBeaconsInRegion(Region region, Callback callback) {
        synchronized (this.rangedRegionState) {
            if (this.rangedRegionState.containsKey(region)) {
                Log.i(TAG, "Already ranging that region -- will replace existing region.");
                this.rangedRegionState.remove(region);
            }
            this.rangedRegionState.put(region, new RangeState(callback));
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Currently ranging ");
            stringBuilder.append(this.rangedRegionState.size());
            stringBuilder.append(" regions.");
            BeaconManager.logDebug(str, stringBuilder.toString());
        }
        if (!this.scanningEnabled) {
            enableScanning();
        }
    }

    public void stopRangingBeaconsInRegion(Region region) {
        synchronized (this.rangedRegionState) {
            this.rangedRegionState.remove(region);
            int size = this.rangedRegionState.size();
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Currently ranging ");
            stringBuilder.append(this.rangedRegionState.size());
            stringBuilder.append(" regions.");
            BeaconManager.logDebug(str, stringBuilder.toString());
        }
        if (this.scanningEnabled && size == 0 && this.monitoredRegionState.size() == 0) {
            disableScanning();
        }
    }

    public void startMonitoringBeaconsInRegion(Region region, Callback callback) {
        BeaconManager.logDebug(TAG, "startMonitoring called");
        synchronized (this.monitoredRegionState) {
            if (this.monitoredRegionState.containsKey(region)) {
                Log.i(TAG, "Already monitoring that region -- will replace existing region monitor.");
                this.monitoredRegionState.remove(region);
            }
            this.monitoredRegionState.put(region, new MonitorState(callback));
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Currently monitoring ");
        stringBuilder.append(this.monitoredRegionState.size());
        stringBuilder.append(" regions.");
        BeaconManager.logDebug(str, stringBuilder.toString());
        if (!this.scanningEnabled) {
            enableScanning();
        }
    }

    public void stopMonitoringBeaconsInRegion(Region region) {
        BeaconManager.logDebug(TAG, "stopMonitoring called");
        synchronized (this.monitoredRegionState) {
            this.monitoredRegionState.remove(region);
            int size = this.monitoredRegionState.size();
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Currently monitoring ");
        stringBuilder.append(this.monitoredRegionState.size());
        stringBuilder.append(" regions.");
        BeaconManager.logDebug(str, stringBuilder.toString());
        if (this.scanningEnabled && size == 0 && this.monitoredRegionState.size() == 0) {
            disableScanning();
        }
    }

    public void setScanPeriods(long j, long j2) {
        this.scanPeriod = j;
        this.betweenScanPeriod = j2;
        long time = new Date().getTime();
        if (this.nextScanStartTime > time) {
            long j3 = this.lastScanEndTime + j2;
            if (j3 < this.nextScanStartTime) {
                this.nextScanStartTime = j3;
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Adjusted nextScanStartTime to be ");
                stringBuilder.append(new Date(this.nextScanStartTime));
                Log.i(str, stringBuilder.toString());
            }
        }
        if (this.scanStopTime > time) {
            time = this.lastScanStartTime + j;
            if (time < this.scanStopTime) {
                this.scanStopTime = time;
                String str2 = TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("Adjusted scanStopTime to be ");
                stringBuilder2.append(new Date(this.scanStopTime));
                Log.i(str2, stringBuilder2.toString());
            }
        }
    }

    public void enableScanning() {
        this.scanningEnabled = true;
        if (!this.scanCyclerStarted) {
            scanLeDevice(Boolean.valueOf(true));
        }
    }

    public void disableScanning() {
        this.scanningEnabled = false;
    }

    @TargetApi(18)
    private void scanLeDevice(Boolean bool) {
        this.scanCyclerStarted = true;
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to API 18.");
            return;
        }
        if (getBluetoothAdapter() == null) {
            Log.e(TAG, "No bluetooth adapter.  beaconService cannot scan.");
            if (this.simulatedScanData == null && BeaconManager.getBeaconSimulator() == null) {
                Log.w(TAG, "exiting");
                return;
            }
            Log.w(TAG, "proceeding with simulated scan data");
        }
        if (bool.booleanValue()) {
            long time = this.nextScanStartTime - new Date().getTime();
            if (time > 0) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Waiting to start next bluetooth scan for another ");
                stringBuilder.append(time);
                stringBuilder.append(" milliseconds");
                BeaconManager.logDebug(str, stringBuilder.toString());
                Handler handler = this.handler;
                AnonymousClass1 anonymousClass1 = new Runnable() {
                    public void run() {
                        BeaconService.this.scanLeDevice(Boolean.valueOf(true));
                    }
                };
                long j = 1000;
                if (time <= 1000) {
                    j = time;
                }
                handler.postDelayed(anonymousClass1, j);
                return;
            }
            this.trackedBeacons = new HashSet();
            this.trackedBeaconsPacketCount = 0;
            if (!this.scanning || this.scanningPaused) {
                this.scanning = true;
                this.scanningPaused = false;
                try {
                    if (getBluetoothAdapter() != null) {
                        if (getBluetoothAdapter().isEnabled()) {
                            if (this.bluetoothCrashResolver.isRecoveryInProgress()) {
                                Log.w(TAG, "Skipping scan because crash recovery is in progress.");
                            } else if (this.scanningEnabled) {
                                try {
                                    getBluetoothAdapter().startLeScan((LeScanCallback) getLeScanCallback());
                                } catch (Exception e) {
                                    Log.w("Internal Android exception scanning for beacons: ", e);
                                }
                            } else {
                                BeaconManager.logDebug(TAG, "Scanning unnecessary - no monitoring or ranging active.");
                            }
                            this.lastScanStartTime = new Date().getTime();
                        } else {
                            Log.w(TAG, "Bluetooth is disabled.  Cannot scan for beacons.");
                        }
                    }
                } catch (Exception unused) {
                    Log.e("TAG", "Exception starting bluetooth scan.  Perhaps bluetooth is disabled or unavailable?");
                }
            } else {
                BeaconManager.logDebug(TAG, "We are already scanning");
            }
            this.scanStopTime = new Date().getTime() + this.scanPeriod;
            scheduleScanStop();
            BeaconManager.logDebug(TAG, "Scan started");
        } else {
            BeaconManager.logDebug(TAG, "disabling scan");
            this.scanning = false;
            if (getBluetoothAdapter() != null) {
                try {
                    getBluetoothAdapter().stopLeScan((LeScanCallback) getLeScanCallback());
                } catch (Exception e2) {
                    Log.w("Internal Android exception scanning for beacons: ", e2);
                }
                this.lastScanEndTime = new Date().getTime();
            }
        }
    }

    private void scheduleScanStop() {
        long time = this.scanStopTime - new Date().getTime();
        if (time > 0) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Waiting to stop scan for another ");
            stringBuilder.append(time);
            stringBuilder.append(" milliseconds");
            BeaconManager.logDebug(str, stringBuilder.toString());
            Handler handler = this.handler;
            AnonymousClass2 anonymousClass2 = new Runnable() {
                public void run() {
                    BeaconService.this.scheduleScanStop();
                }
            };
            long j = 1000;
            if (time <= 1000) {
                j = time;
            }
            handler.postDelayed(anonymousClass2, j);
            return;
        }
        finishScanCycle();
    }

    @TargetApi(18)
    private void finishScanCycle() {
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to API 18.");
            return;
        }
        BeaconManager.logDebug(TAG, "Done with scan cycle");
        processExpiredMonitors();
        if (this.scanning) {
            ApplicationInfo applicationInfo;
            int i;
            processRangeData();
            if (this.simulatedScanData != null) {
                Log.w(TAG, "Simulated scan data is deprecated and will be removed in a future release. Please use the new BeaconSimulator interface instead.");
                applicationInfo = getApplicationInfo();
                i = applicationInfo.flags & 2;
                applicationInfo.flags = i;
                if (i != 0) {
                    for (Beacon processBeaconFromScan : this.simulatedScanData) {
                        processBeaconFromScan(processBeaconFromScan);
                    }
                } else {
                    Log.w(TAG, "Simulated scan data provided, but ignored because we are not running in debug mode.  Please remove simulated scan data for production.");
                }
            }
            if (BeaconManager.getBeaconSimulator() != null) {
                if (BeaconManager.getBeaconSimulator().getBeacons() != null) {
                    applicationInfo = getApplicationInfo();
                    i = applicationInfo.flags & 2;
                    applicationInfo.flags = i;
                    if (i != 0) {
                        for (Beacon processBeaconFromScan2 : BeaconManager.getBeaconSimulator().getBeacons()) {
                            processBeaconFromScan(processBeaconFromScan2);
                        }
                    } else {
                        Log.w(TAG, "Beacon simulations provided, but ignored because we are not running in debug mode.  Please remove beacon simulations for production.");
                    }
                } else {
                    Log.w(TAG, "getBeacons is returning null. No simulated beacons to report.");
                }
            }
            if (getBluetoothAdapter() != null) {
                if (getBluetoothAdapter().isEnabled()) {
                    try {
                        getBluetoothAdapter().stopLeScan((LeScanCallback) getLeScanCallback());
                    } catch (Exception e) {
                        Log.w("Internal Android exception scanning for beacons: ", e);
                    }
                    this.lastScanEndTime = new Date().getTime();
                } else {
                    Log.w(TAG, "Bluetooth is disabled.  Cannot scan for beacons.");
                }
            }
            if (anyRangingOrMonitoringRegionsActive()) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Restarting scan.  Unique beacons seen last cycle: ");
                stringBuilder.append(this.trackedBeacons.size());
                stringBuilder.append(" Total beacon advertisement packets seen: ");
                stringBuilder.append(this.trackedBeaconsPacketCount);
                BeaconManager.logDebug(str, stringBuilder.toString());
                this.scanningPaused = true;
                this.nextScanStartTime = new Date().getTime() + this.betweenScanPeriod;
                if (this.scanningEnabled) {
                    scanLeDevice(Boolean.valueOf(true));
                } else {
                    BeaconManager.logDebug(TAG, "Scanning disabled.  No ranging or monitoring regions are active.");
                    this.scanCyclerStarted = false;
                }
            } else {
                BeaconManager.logDebug(TAG, "Not starting scan because no monitoring or ranging regions are defined.");
                this.scanCyclerStarted = false;
            }
        }
    }

    @TargetApi(18)
    private Object getLeScanCallback() {
        if (this.leScanCallback == null) {
            this.leScanCallback = new LeScanCallback() {
                public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
                    BeaconManager.logDebug(BeaconService.TAG, "got record");
                    new ScanProcessor(BeaconService.this, null).execute(new ScanData[]{new ScanData(bluetoothDevice, i, bArr)});
                }
            };
        }
        return this.leScanCallback;
    }

    private void processRangeData() {
        synchronized (this.rangedRegionState) {
            for (Region region : this.rangedRegionState.keySet()) {
                RangeState rangeState = (RangeState) this.rangedRegionState.get(region);
                BeaconManager.logDebug(TAG, "Calling ranging callback");
                rangeState.getCallback().call(this, "rangingData", new RangingData(rangeState.finalizeBeacons(), region));
            }
        }
    }

    private void processExpiredMonitors() {
        synchronized (this.monitoredRegionState) {
            for (Region region : this.monitoredRegionState.keySet()) {
                MonitorState monitorState = (MonitorState) this.monitoredRegionState.get(region);
                if (monitorState.isNewlyOutside()) {
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("found a monitor that expired: ");
                    stringBuilder.append(region);
                    BeaconManager.logDebug(str, stringBuilder.toString());
                    monitorState.getCallback().call(this, "monitoringData", new MonitoringData(monitorState.isInside(), region));
                }
            }
        }
    }

    private void processBeaconFromScan(Beacon beacon) {
        String str;
        StringBuilder stringBuilder;
        if (Stats.getInstance().isEnabled()) {
            Stats.getInstance().log(beacon);
        }
        this.lastBeaconDetectionTime = new Date();
        this.trackedBeaconsPacketCount++;
        if (this.trackedBeacons.contains(beacon)) {
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("beacon detected multiple times in scan cycle :");
            stringBuilder.append(beacon.toString());
            BeaconManager.logDebug(str, stringBuilder.toString());
        }
        this.trackedBeacons.add(beacon);
        str = TAG;
        stringBuilder = new StringBuilder();
        stringBuilder.append("beacon detected :");
        stringBuilder.append(beacon.toString());
        BeaconManager.logDebug(str, stringBuilder.toString());
        synchronized (this.monitoredRegionState) {
            List<Region> matchingRegions = matchingRegions(beacon, this.monitoredRegionState.keySet());
        }
        for (Region region : matchingRegions) {
            MonitorState monitorState = (MonitorState) this.monitoredRegionState.get(region);
            if (monitorState.markInside()) {
                monitorState.getCallback().call(this, "monitoringData", new MonitoringData(monitorState.isInside(), region));
            }
        }
        BeaconManager.logDebug(TAG, "looking for ranging region matches for this beacon");
        synchronized (this.rangedRegionState) {
            for (Region region2 : matchingRegions(beacon, this.rangedRegionState.keySet())) {
                String str2 = TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("matches ranging region: ");
                stringBuilder2.append(region2);
                BeaconManager.logDebug(str2, stringBuilder2.toString());
                ((RangeState) this.rangedRegionState.get(region2)).addBeacon(beacon);
            }
        }
    }

    private List<Region> matchingRegions(Beacon beacon, Collection<Region> collection) {
        ArrayList arrayList = new ArrayList();
        for (Region region : collection) {
            if (region.matchesBeacon(beacon)) {
                arrayList.add(region);
            } else {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("This region does not match: ");
                stringBuilder.append(region);
                BeaconManager.logDebug(str, stringBuilder.toString());
            }
        }
        return arrayList;
    }

    private boolean anyRangingOrMonitoringRegionsActive() {
        return this.rangedRegionState.size() + this.monitoredRegionState.size() > 0;
    }

    @TargetApi(18)
    private BluetoothAdapter getBluetoothAdapter() {
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to API 18.");
            return null;
        }
        if (this.bluetoothAdapter == null) {
            this.bluetoothAdapter = ((BluetoothManager) getApplicationContext().getSystemService("bluetooth")).getAdapter();
        }
        return this.bluetoothAdapter;
    }
}
