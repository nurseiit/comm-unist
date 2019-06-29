package org.altbeacon.bluetooth;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@TargetApi(5)
public class BluetoothCrashResolver {
    private static final int BLUEDROID_MAX_BLUETOOTH_MAC_COUNT = 1990;
    private static final int BLUEDROID_POST_DISCOVERY_ESTIMATED_BLUETOOTH_MAC_COUNT = 400;
    private static final String DISTINCT_BLUETOOTH_ADDRESSES_FILE = "BluetoothCrashResolverState.txt";
    private static final long MIN_TIME_BETWEEN_STATE_SAVES_MILLIS = 60000;
    private static final boolean PREEMPTIVE_ACTION_ENABLED = true;
    private static final long SUSPICIOUSLY_SHORT_BLUETOOTH_OFF_INTERVAL_MILLIS = 600;
    private static final String TAG = "BluetoothCrashResolver";
    private static final int TIME_TO_LET_DISCOVERY_RUN_MILLIS = 5000;
    private Context context = null;
    private boolean debugEnabled = false;
    private int detectedCrashCount = 0;
    private DiscoveryCanceller discoveryCanceller = new DiscoveryCanceller(this, null);
    private boolean discoveryStartConfirmed = false;
    private Set<String> distinctBluetoothAddresses = new HashSet();
    private long lastBluetoothCrashDetectionTime = 0;
    private long lastBluetoothOffTime = 0;
    private long lastBluetoothTurningOnTime = 0;
    private boolean lastRecoverySucceeded = false;
    private long lastStateSaveTime = 0;
    private final BroadcastReceiver receiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.bluetooth.adapter.action.DISCOVERY_FINISHED")) {
                if (BluetoothCrashResolver.this.recoveryInProgress) {
                    if (BluetoothCrashResolver.this.isDebugEnabled()) {
                        Log.d(BluetoothCrashResolver.TAG, "Bluetooth discovery finished");
                    }
                    BluetoothCrashResolver.this.finishRecovery();
                } else if (BluetoothCrashResolver.this.isDebugEnabled()) {
                    Log.d(BluetoothCrashResolver.TAG, "Bluetooth discovery finished (external)");
                }
            }
            if (action.equals("android.bluetooth.adapter.action.DISCOVERY_STARTED")) {
                if (BluetoothCrashResolver.this.recoveryInProgress) {
                    BluetoothCrashResolver.this.discoveryStartConfirmed = true;
                    if (BluetoothCrashResolver.this.isDebugEnabled()) {
                        Log.d(BluetoothCrashResolver.TAG, "Bluetooth discovery started");
                    }
                } else if (BluetoothCrashResolver.this.isDebugEnabled()) {
                    Log.d(BluetoothCrashResolver.TAG, "Bluetooth discovery started (external)");
                }
            }
            if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE);
                if (intExtra != Integer.MIN_VALUE) {
                    switch (intExtra) {
                        case 10:
                            if (BluetoothCrashResolver.this.isDebugEnabled()) {
                                Log.d(BluetoothCrashResolver.TAG, "Bluetooth state is OFF");
                            }
                            BluetoothCrashResolver.this.lastBluetoothOffTime = new Date().getTime();
                            return;
                        case 11:
                            BluetoothCrashResolver.this.lastBluetoothTurningOnTime = new Date().getTime();
                            if (BluetoothCrashResolver.this.isDebugEnabled()) {
                                Log.d(BluetoothCrashResolver.TAG, "Bluetooth state is TURNING_ON");
                                return;
                            }
                            return;
                        case 12:
                            if (BluetoothCrashResolver.this.isDebugEnabled()) {
                                Log.d(BluetoothCrashResolver.TAG, "Bluetooth state is ON");
                            }
                            if (BluetoothCrashResolver.this.isDebugEnabled()) {
                                action = BluetoothCrashResolver.TAG;
                                StringBuilder stringBuilder = new StringBuilder();
                                stringBuilder.append("Bluetooth was turned off for ");
                                stringBuilder.append(BluetoothCrashResolver.this.lastBluetoothTurningOnTime - BluetoothCrashResolver.this.lastBluetoothOffTime);
                                stringBuilder.append(" milliseconds");
                                Log.d(action, stringBuilder.toString());
                            }
                            if (BluetoothCrashResolver.this.lastBluetoothTurningOnTime - BluetoothCrashResolver.this.lastBluetoothOffTime < BluetoothCrashResolver.SUSPICIOUSLY_SHORT_BLUETOOTH_OFF_INTERVAL_MILLIS) {
                                BluetoothCrashResolver.this.crashDetected();
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                } else if (BluetoothCrashResolver.this.isDebugEnabled()) {
                    Log.d(BluetoothCrashResolver.TAG, "Bluetooth state is ERROR");
                }
            }
        }
    };
    private int recoveryAttemptCount = 0;
    private boolean recoveryInProgress = false;
    private UpdateNotifier updateNotifier;

    private class DiscoveryCanceller extends AsyncTask<Void, Void, Void> {
        /* Access modifiers changed, original: protected */
        public void onPostExecute(Void voidR) {
        }

        /* Access modifiers changed, original: protected */
        public void onPreExecute() {
        }

        /* Access modifiers changed, original: protected|varargs */
        public void onProgressUpdate(Void... voidArr) {
        }

        private DiscoveryCanceller() {
        }

        /* synthetic */ DiscoveryCanceller(BluetoothCrashResolver bluetoothCrashResolver, AnonymousClass1 anonymousClass1) {
            this();
        }

        /* Access modifiers changed, original: protected|varargs */
        public Void doInBackground(Void... voidArr) {
            try {
                Thread.sleep(5000);
                if (!BluetoothCrashResolver.this.discoveryStartConfirmed) {
                    Log.w(BluetoothCrashResolver.TAG, "BluetoothAdapter.ACTION_DISCOVERY_STARTED never received.  Recovery may fail.");
                }
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter.isDiscovering()) {
                    if (BluetoothCrashResolver.this.isDebugEnabled()) {
                        Log.d(BluetoothCrashResolver.TAG, "Cancelling discovery");
                    }
                    defaultAdapter.cancelDiscovery();
                } else if (BluetoothCrashResolver.this.isDebugEnabled()) {
                    Log.d(BluetoothCrashResolver.TAG, "Discovery not running.  Won't cancel it");
                }
            } catch (InterruptedException unused) {
                if (BluetoothCrashResolver.this.isDebugEnabled()) {
                    Log.d(BluetoothCrashResolver.TAG, "DiscoveryCanceller sleep interrupted.");
                }
            }
            return null;
        }
    }

    public interface UpdateNotifier {
        void dataUpdated();
    }

    private int getCrashRiskDeviceCount() {
        return 1590;
    }

    public BluetoothCrashResolver(Context context) {
        this.context = context.getApplicationContext();
        if (isDebugEnabled()) {
            Log.d(TAG, "constructed");
        }
        loadState();
    }

    public void start() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        this.context.registerReceiver(this.receiver, intentFilter);
        if (isDebugEnabled()) {
            Log.d(TAG, "started listening for BluetoothAdapter events");
        }
    }

    public void stop() {
        this.context.unregisterReceiver(this.receiver);
        if (isDebugEnabled()) {
            Log.d(TAG, "stopped listening for BluetoothAdapter events");
        }
        saveState();
    }

    public void enableDebug() {
        this.debugEnabled = true;
    }

    public void disableDebug() {
        this.debugEnabled = false;
    }

    @TargetApi(18)
    public void notifyScannedDevice(BluetoothDevice bluetoothDevice, LeScanCallback leScanCallback) {
        String str;
        StringBuilder stringBuilder;
        int size = isDebugEnabled() ? this.distinctBluetoothAddresses.size() : 0;
        synchronized (this.distinctBluetoothAddresses) {
            this.distinctBluetoothAddresses.add(bluetoothDevice.getAddress());
        }
        if (isDebugEnabled()) {
            int size2 = this.distinctBluetoothAddresses.size();
            if (size != size2 && size2 % 100 == 0 && isDebugEnabled()) {
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Distinct bluetooth devices seen: ");
                stringBuilder.append(this.distinctBluetoothAddresses.size());
                Log.d(str, stringBuilder.toString());
            }
        }
        if (this.distinctBluetoothAddresses.size() > getCrashRiskDeviceCount() && !this.recoveryInProgress) {
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Large number of bluetooth devices detected: ");
            stringBuilder.append(this.distinctBluetoothAddresses.size());
            stringBuilder.append(" Proactively attempting to clear out address list to prevent a crash");
            Log.w(str, stringBuilder.toString());
            Log.w(TAG, "Stopping LE Scan");
            BluetoothAdapter.getDefaultAdapter().stopLeScan(leScanCallback);
            startRecovery();
            processStateChange();
        }
    }

    public void crashDetected() {
        if (VERSION.SDK_INT < 18) {
            if (isDebugEnabled()) {
                Log.d(TAG, "Ignoring crashes before SDK 18, because BLE is unsupported.");
            }
            return;
        }
        Log.w(TAG, "BluetoothService crash detected");
        if (this.distinctBluetoothAddresses.size() > 0 && isDebugEnabled()) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Distinct bluetooth devices seen at crash: ");
            stringBuilder.append(this.distinctBluetoothAddresses.size());
            Log.d(str, stringBuilder.toString());
        }
        this.lastBluetoothCrashDetectionTime = new Date().getTime();
        this.detectedCrashCount++;
        if (!this.recoveryInProgress) {
            startRecovery();
        } else if (isDebugEnabled()) {
            Log.d(TAG, "Ignoring bluetooth crash because recovery is already in progress.");
        }
        processStateChange();
    }

    public long getLastBluetoothCrashDetectionTime() {
        return this.lastBluetoothCrashDetectionTime;
    }

    public int getDetectedCrashCount() {
        return this.detectedCrashCount;
    }

    public int getRecoveryAttemptCount() {
        return this.recoveryAttemptCount;
    }

    public boolean isLastRecoverySucceeded() {
        return this.lastRecoverySucceeded;
    }

    public boolean isRecoveryInProgress() {
        return this.recoveryInProgress;
    }

    public void setUpdateNotifier(UpdateNotifier updateNotifier) {
        this.updateNotifier = updateNotifier;
    }

    public void forceFlush() {
        startRecovery();
        processStateChange();
    }

    private boolean isDebugEnabled() {
        return this.debugEnabled;
    }

    private void processStateChange() {
        if (this.updateNotifier != null) {
            this.updateNotifier.dataUpdated();
        }
        if (new Date().getTime() - this.lastStateSaveTime > MIN_TIME_BETWEEN_STATE_SAVES_MILLIS) {
            saveState();
        }
    }

    @TargetApi(17)
    private void startRecovery() {
        this.recoveryAttemptCount++;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (isDebugEnabled()) {
            Log.d(TAG, "about to check if discovery is active");
        }
        if (defaultAdapter.isDiscovering()) {
            Log.w(TAG, "Already discovering.  Recovery attempt abandoned.");
            return;
        }
        Log.w(TAG, "Recovery attempt started");
        this.recoveryInProgress = true;
        this.discoveryStartConfirmed = false;
        if (isDebugEnabled()) {
            Log.d(TAG, "about to command discovery");
        }
        if (!defaultAdapter.startDiscovery()) {
            Log.w(TAG, "Can't start discovery.  Is bluetooth turned on?");
        }
        if (isDebugEnabled()) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("startDiscovery commanded.  isDiscovering()=");
            stringBuilder.append(defaultAdapter.isDiscovering());
            Log.d(str, stringBuilder.toString());
        }
        if (isDebugEnabled()) {
            Log.d(TAG, "We will be cancelling this discovery in 5000 milliseconds.");
        }
        this.discoveryCanceller.doInBackground(new Void[0]);
    }

    private void finishRecovery() {
        Log.w(TAG, "Recovery attempt finished");
        synchronized (this.distinctBluetoothAddresses) {
            this.distinctBluetoothAddresses.clear();
        }
        this.recoveryInProgress = false;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x0098 */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00ce A:{SYNTHETIC, Splitter:B:39:0x00ce} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:29|30|(2:32|33)) */
    /* JADX WARNING: Missing block: B:27:0x0094, code skipped:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:28:0x0095, code skipped:
            r2 = r0;
            r0 = r1;
     */
    /* JADX WARNING: Missing block: B:30:?, code skipped:
            android.util.Log.w(TAG, "Can't write macs to BluetoothCrashResolverState.txt");
     */
    /* JADX WARNING: Missing block: B:31:0x009f, code skipped:
            if (r0 != null) goto L_0x00a1;
     */
    /* JADX WARNING: Missing block: B:33:?, code skipped:
            r0.close();
     */
    /* JADX WARNING: Missing block: B:40:?, code skipped:
            r2.close();
     */
    private void saveState() {
        /*
        r5 = this;
        r0 = new java.util.Date;
        r0.<init>();
        r0 = r0.getTime();
        r5.lastStateSaveTime = r0;
        r0 = 0;
        r1 = r5.context;	 Catch:{ IOException -> 0x0098 }
        r2 = "BluetoothCrashResolverState.txt";
        r3 = 0;
        r1 = r1.openFileOutput(r2, r3);	 Catch:{ IOException -> 0x0098 }
        r2 = new java.io.OutputStreamWriter;	 Catch:{ IOException -> 0x0098 }
        r2.<init>(r1);	 Catch:{ IOException -> 0x0098 }
        r0 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0.<init>();	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r3 = r5.lastBluetoothCrashDetectionTime;	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0.append(r3);	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r1 = "\n";
        r0.append(r1);	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0 = r0.toString();	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r2.write(r0);	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0.<init>();	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r1 = r5.detectedCrashCount;	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0.append(r1);	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r1 = "\n";
        r0.append(r1);	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0 = r0.toString();	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r2.write(r0);	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0.<init>();	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r1 = r5.recoveryAttemptCount;	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0.append(r1);	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r1 = "\n";
        r0.append(r1);	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0 = r0.toString();	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r2.write(r0);	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0 = r5.lastRecoverySucceeded;	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        if (r0 == 0) goto L_0x0063;
    L_0x0060:
        r0 = "1\n";
        goto L_0x0065;
    L_0x0063:
        r0 = "0\n";
    L_0x0065:
        r2.write(r0);	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r0 = r5.distinctBluetoothAddresses;	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        monitor-enter(r0);	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
        r1 = r5.distinctBluetoothAddresses;	 Catch:{ all -> 0x008d }
        r1 = r1.iterator();	 Catch:{ all -> 0x008d }
    L_0x0071:
        r3 = r1.hasNext();	 Catch:{ all -> 0x008d }
        if (r3 == 0) goto L_0x0086;
    L_0x0077:
        r3 = r1.next();	 Catch:{ all -> 0x008d }
        r3 = (java.lang.String) r3;	 Catch:{ all -> 0x008d }
        r2.write(r3);	 Catch:{ all -> 0x008d }
        r3 = "\n";
        r2.write(r3);	 Catch:{ all -> 0x008d }
        goto L_0x0071;
    L_0x0086:
        monitor-exit(r0);	 Catch:{ all -> 0x008d }
        if (r2 == 0) goto L_0x00a4;
    L_0x0089:
        r2.close();	 Catch:{ IOException -> 0x00a4 }
        goto L_0x00a4;
    L_0x008d:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x008d }
        throw r1;	 Catch:{ IOException -> 0x0092, all -> 0x0090 }
    L_0x0090:
        r0 = move-exception;
        goto L_0x00cc;
    L_0x0092:
        r0 = r2;
        goto L_0x0098;
    L_0x0094:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
        goto L_0x00cc;
    L_0x0098:
        r1 = "BluetoothCrashResolver";
        r2 = "Can't write macs to BluetoothCrashResolverState.txt";
        android.util.Log.w(r1, r2);	 Catch:{ all -> 0x0094 }
        if (r0 == 0) goto L_0x00a4;
    L_0x00a1:
        r0.close();	 Catch:{ IOException -> 0x00a4 }
    L_0x00a4:
        r0 = r5.isDebugEnabled();
        if (r0 == 0) goto L_0x00cb;
    L_0x00aa:
        r0 = "BluetoothCrashResolver";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Wrote ";
        r1.append(r2);
        r2 = r5.distinctBluetoothAddresses;
        r2 = r2.size();
        r1.append(r2);
        r2 = " bluetooth addresses";
        r1.append(r2);
        r1 = r1.toString();
        android.util.Log.d(r0, r1);
    L_0x00cb:
        return;
    L_0x00cc:
        if (r2 == 0) goto L_0x00d1;
    L_0x00ce:
        r2.close();	 Catch:{ IOException -> 0x00d1 }
    L_0x00d1:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.bluetooth.BluetoothCrashResolver.saveState():void");
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:37:0x0074=Splitter:B:37:0x0074, B:32:0x0067=Splitter:B:32:0x0067} */
    /* JADX WARNING: Missing exception handler attribute for start block: B:37:0x0074 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:32:0x0067 */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00a8 A:{SYNTHETIC, Splitter:B:45:0x00a8} */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:32:0x0067, B:37:0x0074] */
    /* JADX WARNING: Missing block: B:34:0x006e, code skipped:
            if (r0 != null) goto L_0x0070;
     */
    /* JADX WARNING: Missing block: B:36:?, code skipped:
            r0.close();
     */
    /* JADX WARNING: Missing block: B:39:0x007b, code skipped:
            if (r0 != null) goto L_0x0070;
     */
    private void loadState() {
        /*
        r4 = this;
        r0 = 0;
        r1 = r4.context;	 Catch:{ IOException -> 0x0074, NumberFormatException -> 0x0067 }
        r2 = "BluetoothCrashResolverState.txt";
        r1 = r1.openFileInput(r2);	 Catch:{ IOException -> 0x0074, NumberFormatException -> 0x0067 }
        r2 = new java.io.BufferedReader;	 Catch:{ IOException -> 0x0074, NumberFormatException -> 0x0067 }
        r3 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x0074, NumberFormatException -> 0x0067 }
        r3.<init>(r1);	 Catch:{ IOException -> 0x0074, NumberFormatException -> 0x0067 }
        r2.<init>(r3);	 Catch:{ IOException -> 0x0074, NumberFormatException -> 0x0067 }
        r0 = r2.readLine();	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        if (r0 == 0) goto L_0x001f;
    L_0x0019:
        r0 = java.lang.Long.parseLong(r0);	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        r4.lastBluetoothCrashDetectionTime = r0;	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
    L_0x001f:
        r0 = r2.readLine();	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        if (r0 == 0) goto L_0x002b;
    L_0x0025:
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        r4.detectedCrashCount = r0;	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
    L_0x002b:
        r0 = r2.readLine();	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        if (r0 == 0) goto L_0x0037;
    L_0x0031:
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        r4.recoveryAttemptCount = r0;	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
    L_0x0037:
        r0 = r2.readLine();	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        if (r0 == 0) goto L_0x004b;
    L_0x003d:
        r1 = 0;
        r4.lastRecoverySucceeded = r1;	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        r1 = "1";
        r0 = r0.equals(r1);	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        if (r0 == 0) goto L_0x004b;
    L_0x0048:
        r0 = 1;
        r4.lastRecoverySucceeded = r0;	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
    L_0x004b:
        r0 = r2.readLine();	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        if (r0 == 0) goto L_0x0057;
    L_0x0051:
        r1 = r4.distinctBluetoothAddresses;	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        r1.add(r0);	 Catch:{ IOException -> 0x0061, NumberFormatException -> 0x005f, all -> 0x005d }
        goto L_0x004b;
    L_0x0057:
        if (r2 == 0) goto L_0x007e;
    L_0x0059:
        r2.close();	 Catch:{ IOException -> 0x007e }
        goto L_0x007e;
    L_0x005d:
        r0 = move-exception;
        goto L_0x00a6;
    L_0x005f:
        r0 = r2;
        goto L_0x0067;
    L_0x0061:
        r0 = r2;
        goto L_0x0074;
    L_0x0063:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
        goto L_0x00a6;
    L_0x0067:
        r1 = "BluetoothCrashResolver";
        r2 = "Can't parse file BluetoothCrashResolverState.txt";
        android.util.Log.w(r1, r2);	 Catch:{ all -> 0x0063 }
        if (r0 == 0) goto L_0x007e;
    L_0x0070:
        r0.close();	 Catch:{ IOException -> 0x007e }
        goto L_0x007e;
    L_0x0074:
        r1 = "BluetoothCrashResolver";
        r2 = "Can't read macs from BluetoothCrashResolverState.txt";
        android.util.Log.w(r1, r2);	 Catch:{ all -> 0x0063 }
        if (r0 == 0) goto L_0x007e;
    L_0x007d:
        goto L_0x0070;
    L_0x007e:
        r0 = r4.isDebugEnabled();
        if (r0 == 0) goto L_0x00a5;
    L_0x0084:
        r0 = "BluetoothCrashResolver";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Read ";
        r1.append(r2);
        r2 = r4.distinctBluetoothAddresses;
        r2 = r2.size();
        r1.append(r2);
        r2 = " bluetooth addresses";
        r1.append(r2);
        r1 = r1.toString();
        android.util.Log.d(r0, r1);
    L_0x00a5:
        return;
    L_0x00a6:
        if (r2 == 0) goto L_0x00ab;
    L_0x00a8:
        r2.close();	 Catch:{ IOException -> 0x00ab }
    L_0x00ab:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.bluetooth.BluetoothCrashResolver.loadState():void");
    }
}
