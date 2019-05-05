package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.BleDevicesResult;

public final class zzbzm extends zzed implements zzbzk {
    zzbzm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.internal.ble.IBleDevicesCallback");
    }

    public final void zza(BleDevicesResult bleDevicesResult) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bleDevicesResult);
        zzc(1, zzZ);
    }
}
