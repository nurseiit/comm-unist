package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public abstract class zzbxh extends zzee implements zzbxg {
    public zzbxh() {
        attachInterface(this, "com.google.android.gms.fitness.internal.IStatusCallback");
    }

    public static zzbxg zzW(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IStatusCallback");
        return queryLocalInterface instanceof zzbxg ? (zzbxg) queryLocalInterface : new zzbxi(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zzu((Status) zzef.zza(parcel, Status.CREATOR));
        return true;
    }
}
