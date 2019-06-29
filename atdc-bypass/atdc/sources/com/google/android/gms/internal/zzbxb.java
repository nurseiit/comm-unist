package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.SessionReadResult;

public abstract class zzbxb extends zzee implements zzbxa {
    public zzbxb() {
        attachInterface(this, "com.google.android.gms.fitness.internal.ISessionReadCallback");
    }

    public static zzbxa zzU(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.ISessionReadCallback");
        return queryLocalInterface instanceof zzbxa ? (zzbxa) queryLocalInterface : new zzbxc(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza((SessionReadResult) zzef.zza(parcel, SessionReadResult.CREATOR));
        return true;
    }
}
