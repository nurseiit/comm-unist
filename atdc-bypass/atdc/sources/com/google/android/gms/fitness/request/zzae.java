package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzae extends zzee implements zzad {
    public zzae() {
        attachInterface(this, "com.google.android.gms.fitness.request.IBleScanCallback");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                onDeviceFound((BleDevice) zzef.zza(parcel, BleDevice.CREATOR));
                return true;
            case 2:
                onScanStopped();
                return true;
            default:
                return false;
        }
    }
}
