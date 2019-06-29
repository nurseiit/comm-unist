package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzaf extends zzed implements zzad {
    zzaf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.request.IBleScanCallback");
    }

    public final void onDeviceFound(BleDevice bleDevice) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bleDevice);
        zzc(1, zzZ);
    }

    public final void onScanStopped() throws RemoteException {
        zzc(2, zzZ());
    }
}
