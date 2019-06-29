package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.BleDevicesResult;

public abstract class zzbzl extends zzee implements zzbzk {
    public zzbzl() {
        attachInterface(this, "com.google.android.gms.fitness.internal.ble.IBleDevicesCallback");
    }

    public static zzbzk zzX(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.ble.IBleDevicesCallback");
        return queryLocalInterface instanceof zzbzk ? (zzbzk) queryLocalInterface : new zzbzm(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza((BleDevicesResult) zzef.zza(parcel, BleDevicesResult.CREATOR));
        return true;
    }
}
