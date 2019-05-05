package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzcmq extends zzee implements zzcmp {
    public zzcmq() {
        attachInterface(this, "com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 2:
                zza((zzcoc) zzef.zza(parcel, zzcoc.CREATOR));
                return true;
            case 3:
                zza((zzcnw) zzef.zza(parcel, zzcnw.CREATOR));
                return true;
            case 4:
                zza((zzcoe) zzef.zza(parcel, zzcoe.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
