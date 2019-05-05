package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzcnj extends zzee implements zzcni {
    public zzcnj() {
        attachInterface(this, "com.google.android.gms.nearby.internal.connection.IResultListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 2) {
            return false;
        }
        zzbq(parcel.readInt());
        return true;
    }
}
