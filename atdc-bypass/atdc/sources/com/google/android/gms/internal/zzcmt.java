package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzcmt extends zzee implements zzcms {
    public zzcmt() {
        attachInterface(this, "com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 2:
                zza((zzcno) zzef.zza(parcel, zzcno.CREATOR));
                return true;
            case 3:
                zza((zzcnu) zzef.zza(parcel, zzcnu.CREATOR));
                return true;
            case 4:
                zza((zzcnw) zzef.zza(parcel, zzcnw.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
