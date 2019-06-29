package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzcnb extends zzee implements zzcna {
    public zzcnb() {
        attachInterface(this, "com.google.android.gms.nearby.internal.connection.IDiscoveryListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 2:
                zza((zzcny) zzef.zza(parcel, zzcny.CREATOR));
                return true;
            case 3:
                zza((zzcoa) zzef.zza(parcel, zzcoa.CREATOR));
                return true;
            case 4:
                zza((zzcok) zzef.zza(parcel, zzcok.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
