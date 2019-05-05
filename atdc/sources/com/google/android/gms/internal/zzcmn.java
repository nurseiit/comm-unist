package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzcmn extends zzee implements zzcmm {
    public zzcmn() {
        attachInterface(this, "com.google.android.gms.nearby.internal.connection.IAdvertisingCallback");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 2:
                zza((zzcnq) zzef.zza(parcel, zzcnq.CREATOR));
                return true;
            case 3:
                zza((zzcoi) zzef.zza(parcel, zzcoi.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
