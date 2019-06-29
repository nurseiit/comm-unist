package org.altbeacon.beacon;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.altbeacon.beacon.service.BeaconService;
import org.altbeacon.beacon.service.StartRMData;
import org.altbeacon.beacon.simulator.BeaconSimulator;

@TargetApi(4)
public class BeaconManager {
    public static final long DEFAULT_BACKGROUND_BETWEEN_SCAN_PERIOD = 300000;
    public static final long DEFAULT_BACKGROUND_SCAN_PERIOD = 10000;
    public static final long DEFAULT_FOREGROUND_BETWEEN_SCAN_PERIOD = 0;
    public static final long DEFAULT_FOREGROUND_SCAN_PERIOD = 1100;
    private static final String TAG = "BeaconManager";
    protected static BeaconSimulator beaconSimulator = null;
    protected static BeaconManager client = null;
    public static boolean debug = false;
    protected static String distanceModelUpdateUrl = "http://data.altbeacon.org/android-distance.json";
    private long backgroundBetweenScanPeriod = DEFAULT_BACKGROUND_BETWEEN_SCAN_PERIOD;
    private long backgroundScanPeriod = 10000;
    private ArrayList<BeaconParser> beaconParsers = new ArrayList();
    private ServiceConnection beaconServiceConnection = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            BeaconManager.logDebug(BeaconManager.TAG, "we have a connection to the service now");
            BeaconManager.this.serviceMessenger = new Messenger(iBinder);
            synchronized (BeaconManager.this.consumers) {
                for (BeaconConsumer beaconConsumer : BeaconManager.this.consumers.keySet()) {
                    if (!Boolean.valueOf(((ConsumerInfo) BeaconManager.this.consumers.get(beaconConsumer)).isConnected).booleanValue()) {
                        beaconConsumer.onBeaconServiceConnect();
                        ConsumerInfo consumerInfo = (ConsumerInfo) BeaconManager.this.consumers.get(beaconConsumer);
                        consumerInfo.isConnected = true;
                        BeaconManager.this.consumers.put(beaconConsumer, consumerInfo);
                    }
                }
            }
        }

        public void onServiceDisconnected(ComponentName componentName) {
            Log.e(BeaconManager.TAG, "onServiceDisconnected");
            BeaconManager.this.serviceMessenger = null;
        }
    };
    private Map<BeaconConsumer, ConsumerInfo> consumers = new HashMap();
    private Context context;
    protected RangeNotifier dataRequestNotifier = null;
    private long foregroundBetweenScanPeriod = 0;
    private long foregroundScanPeriod = DEFAULT_FOREGROUND_SCAN_PERIOD;
    private boolean mBackgroundMode = false;
    private boolean mBackgroundModeUninitialized = true;
    protected MonitorNotifier monitorNotifier = null;
    private ArrayList<Region> monitoredRegions = new ArrayList();
    protected RangeNotifier rangeNotifier = null;
    private ArrayList<Region> rangedRegions = new ArrayList();
    private Messenger serviceMessenger = null;

    private class ConsumerInfo {
        public boolean isConnected;

        private ConsumerInfo() {
            this.isConnected = false;
        }

        /* synthetic */ ConsumerInfo(BeaconManager beaconManager, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static void setDebug(boolean z) {
        debug = z;
    }

    public void setForegroundScanPeriod(long j) {
        this.foregroundScanPeriod = j;
    }

    public void setForegroundBetweenScanPeriod(long j) {
        this.foregroundBetweenScanPeriod = j;
    }

    public void setBackgroundScanPeriod(long j) {
        this.backgroundScanPeriod = j;
    }

    public void setBackgroundBetweenScanPeriod(long j) {
        this.backgroundBetweenScanPeriod = j;
    }

    public static BeaconManager getInstanceForApplication(Context context) {
        if (client == null) {
            logDebug(TAG, "BeaconManager instance creation");
            client = new BeaconManager(context);
        }
        return client;
    }

    public List<BeaconParser> getBeaconParsers() {
        return this.beaconParsers;
    }

    protected BeaconManager(Context context) {
        this.context = context;
        this.beaconParsers.add(new AltBeaconParser());
    }

    @TargetApi(18)
    public boolean checkAvailability() throws BleNotAvailableException {
        if (VERSION.SDK_INT < 18) {
            throw new BleNotAvailableException("Bluetooth LE not supported by this device");
        } else if (this.context.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            return ((BluetoothManager) this.context.getSystemService("bluetooth")).getAdapter().isEnabled();
        } else {
            throw new BleNotAvailableException("Bluetooth LE not supported by this device");
        }
    }

    public void bind(BeaconConsumer beaconConsumer) {
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to SDK 18.  Method invocation will be ignored");
            return;
        }
        synchronized (this.consumers) {
            if (this.consumers.keySet().contains(beaconConsumer)) {
                logDebug(TAG, "This consumer is already bound");
            } else {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("This consumer is not bound.  binding: ");
                stringBuilder.append(beaconConsumer);
                logDebug(str, stringBuilder.toString());
                this.consumers.put(beaconConsumer, new ConsumerInfo(this, null));
                beaconConsumer.bindService(new Intent(beaconConsumer.getApplicationContext(), BeaconService.class), this.beaconServiceConnection, 1);
                String str2 = TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("consumer count is now:");
                stringBuilder2.append(this.consumers.size());
                logDebug(str2, stringBuilder2.toString());
            }
        }
    }

    public void unbind(BeaconConsumer beaconConsumer) {
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to SDK 18.  Method invocation will be ignored");
            return;
        }
        synchronized (this.consumers) {
            if (this.consumers.keySet().contains(beaconConsumer)) {
                Log.d(TAG, "Unbinding");
                beaconConsumer.unbindService(this.beaconServiceConnection);
                this.consumers.remove(beaconConsumer);
                if (this.consumers.size() == 0) {
                    this.serviceMessenger = null;
                }
            } else {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("This consumer is not bound to: ");
                stringBuilder.append(beaconConsumer);
                logDebug(str, stringBuilder.toString());
                logDebug(TAG, "Bound consumers: ");
                for (int i = 0; i < this.consumers.size(); i++) {
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(" ");
                    stringBuilder.append(this.consumers.get(Integer.valueOf(i)));
                    Log.i(str, stringBuilder.toString());
                }
            }
        }
    }

    public boolean isBound(BeaconConsumer beaconConsumer) {
        boolean z;
        synchronized (this.consumers) {
            z = this.consumers.keySet().contains(beaconConsumer) && this.serviceMessenger != null;
        }
        return z;
    }

    public void setBackgroundMode(boolean z) {
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to SDK 18.  Method invocation will be ignored");
        }
        this.mBackgroundModeUninitialized = false;
        if (z != this.mBackgroundMode) {
            this.mBackgroundMode = z;
            try {
                updateScanPeriods();
            } catch (RemoteException unused) {
                Log.e(TAG, "Cannot contact service to set scan periods");
            }
        }
    }

    public boolean isBackgroundModeUninitialized() {
        return this.mBackgroundModeUninitialized;
    }

    public void setRangeNotifier(RangeNotifier rangeNotifier) {
        this.rangeNotifier = rangeNotifier;
    }

    public void setMonitorNotifier(MonitorNotifier monitorNotifier) {
        this.monitorNotifier = monitorNotifier;
    }

    @TargetApi(18)
    public void startRangingBeaconsInRegion(Region region) throws RemoteException {
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to SDK 18.  Method invocation will be ignored");
        } else if (this.serviceMessenger == null) {
            throw new RemoteException("The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()");
        } else {
            Message obtain = Message.obtain(null, 2, 0, 0);
            obtain.obj = new StartRMData(region, callbackPackageName(), getScanPeriod(), getBetweenScanPeriod());
            this.serviceMessenger.send(obtain);
            synchronized (this.rangedRegions) {
                this.rangedRegions.add((Region) region.clone());
            }
        }
    }

    @TargetApi(18)
    public void stopRangingBeaconsInRegion(Region region) throws RemoteException {
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to SDK 18.  Method invocation will be ignored");
        } else if (this.serviceMessenger == null) {
            throw new RemoteException("The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()");
        } else {
            Object obj = null;
            Message obtain = Message.obtain(null, 3, 0, 0);
            obtain.obj = new StartRMData(region, callbackPackageName(), getScanPeriod(), getBetweenScanPeriod());
            this.serviceMessenger.send(obtain);
            synchronized (this.rangedRegions) {
                Iterator it = this.rangedRegions.iterator();
                while (it.hasNext()) {
                    Region region2 = (Region) it.next();
                    if (region.getUniqueId().equals(region2.getUniqueId())) {
                        obj = region2;
                    }
                }
                this.rangedRegions.remove(obj);
            }
        }
    }

    @TargetApi(18)
    public void startMonitoringBeaconsInRegion(Region region) throws RemoteException {
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to API 18.  Method invocation will be ignored");
        } else if (this.serviceMessenger == null) {
            throw new RemoteException("The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()");
        } else {
            Message obtain = Message.obtain(null, 4, 0, 0);
            obtain.obj = new StartRMData(region, callbackPackageName(), getScanPeriod(), getBetweenScanPeriod());
            this.serviceMessenger.send(obtain);
            synchronized (this.monitoredRegions) {
                this.monitoredRegions.add((Region) region.clone());
            }
        }
    }

    @TargetApi(18)
    public void stopMonitoringBeaconsInRegion(Region region) throws RemoteException {
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to API 18.  Method invocation will be ignored");
        } else if (this.serviceMessenger == null) {
            throw new RemoteException("The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()");
        } else {
            Object obj = null;
            Message obtain = Message.obtain(null, 5, 0, 0);
            obtain.obj = new StartRMData(region, callbackPackageName(), getScanPeriod(), getBetweenScanPeriod());
            this.serviceMessenger.send(obtain);
            synchronized (this.monitoredRegions) {
                Iterator it = this.monitoredRegions.iterator();
                while (it.hasNext()) {
                    Region region2 = (Region) it.next();
                    if (region.getUniqueId().equals(region2.getUniqueId())) {
                        obj = region2;
                    }
                }
                this.monitoredRegions.remove(obj);
            }
        }
    }

    @TargetApi(18)
    public void updateScanPeriods() throws RemoteException {
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "Not supported prior to API 18.  Method invocation will be ignored");
        } else if (this.serviceMessenger == null) {
            throw new RemoteException("The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()");
        } else {
            Message obtain = Message.obtain(null, 6, 0, 0);
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("updating scan period to ");
            stringBuilder.append(getScanPeriod());
            stringBuilder.append(", ");
            stringBuilder.append(getBetweenScanPeriod());
            logDebug(str, stringBuilder.toString());
            obtain.obj = new StartRMData(getScanPeriod(), getBetweenScanPeriod());
            this.serviceMessenger.send(obtain);
        }
    }

    private String callbackPackageName() {
        String packageName = this.context.getPackageName();
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("callback packageName: ");
        stringBuilder.append(packageName);
        logDebug(str, stringBuilder.toString());
        return packageName;
    }

    public MonitorNotifier getMonitoringNotifier() {
        return this.monitorNotifier;
    }

    public RangeNotifier getRangingNotifier() {
        return this.rangeNotifier;
    }

    public Collection<Region> getMonitoredRegions() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.monitoredRegions) {
            Iterator it = this.monitoredRegions.iterator();
            while (it.hasNext()) {
                arrayList.add((Region) ((Region) it.next()).clone());
            }
        }
        return arrayList;
    }

    public Collection<Region> getRangedRegions() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.rangedRegions) {
            Iterator it = this.rangedRegions.iterator();
            while (it.hasNext()) {
                arrayList.add((Region) ((Region) it.next()).clone());
            }
        }
        return arrayList;
    }

    public static void logDebug(String str, String str2) {
        if (debug) {
            Log.d(str, str2);
        }
    }

    public static void logDebug(String str, String str2, Throwable th) {
        if (debug) {
            Log.d(str, str2, th);
        }
    }

    public static String getDistanceModelUpdateUrl() {
        return distanceModelUpdateUrl;
    }

    public static void setDistanceModelUpdateUrl(String str) {
        distanceModelUpdateUrl = str;
    }

    public static void setBeaconSimulator(BeaconSimulator beaconSimulator) {
        beaconSimulator = beaconSimulator;
    }

    public static BeaconSimulator getBeaconSimulator() {
        return beaconSimulator;
    }

    /* Access modifiers changed, original: protected */
    public void setDataRequestNotifier(RangeNotifier rangeNotifier) {
        this.dataRequestNotifier = rangeNotifier;
    }

    /* Access modifiers changed, original: protected */
    public RangeNotifier getDataRequestNotifier() {
        return this.dataRequestNotifier;
    }

    private long getScanPeriod() {
        if (this.mBackgroundMode) {
            return this.backgroundScanPeriod;
        }
        return this.foregroundScanPeriod;
    }

    private long getBetweenScanPeriod() {
        if (this.mBackgroundMode) {
            return this.backgroundBetweenScanPeriod;
        }
        return this.foregroundBetweenScanPeriod;
    }
}
