package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.DataReadResult;

public abstract class zzbvw extends zzee implements zzbvv {
    public zzbvw() {
        attachInterface(this, "com.google.android.gms.fitness.internal.IDataReadCallback");
    }

    public static zzbvv zzP(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IDataReadCallback");
        return queryLocalInterface instanceof zzbvv ? (zzbvv) queryLocalInterface : new zzbvx(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza((DataReadResult) zzef.zza(parcel, DataReadResult.CREATOR));
        return true;
    }
}
