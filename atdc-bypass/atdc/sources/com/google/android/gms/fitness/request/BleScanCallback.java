package com.google.android.gms.fitness.request;

import com.google.android.gms.fitness.data.BleDevice;

public abstract class BleScanCallback {
    public abstract void onDeviceFound(BleDevice bleDevice);

    public abstract void onScanStopped();
}
