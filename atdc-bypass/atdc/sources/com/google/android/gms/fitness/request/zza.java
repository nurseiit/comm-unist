package com.google.android.gms.fitness.request;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.BleDevice;

public final class zza extends zzae {
    private final BleScanCallback zzaWj;

    private zza(BleScanCallback bleScanCallback) {
        this.zzaWj = (BleScanCallback) zzbo.zzu(bleScanCallback);
    }

    public final void onDeviceFound(BleDevice bleDevice) throws RemoteException {
        this.zzaWj.onDeviceFound(bleDevice);
    }

    public final void onScanStopped() throws RemoteException {
        this.zzaWj.onScanStopped();
    }
}
