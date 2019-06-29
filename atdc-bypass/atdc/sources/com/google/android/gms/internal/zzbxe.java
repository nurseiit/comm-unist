package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.SessionStopResult;

public abstract class zzbxe extends zzee implements zzbxd {
    public zzbxe() {
        attachInterface(this, "com.google.android.gms.fitness.internal.ISessionStopCallback");
    }

    public static zzbxd zzV(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.ISessionStopCallback");
        return queryLocalInterface instanceof zzbxd ? (zzbxd) queryLocalInterface : new zzbxf(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza((SessionStopResult) zzef.zza(parcel, SessionStopResult.CREATOR));
        return true;
    }
}
