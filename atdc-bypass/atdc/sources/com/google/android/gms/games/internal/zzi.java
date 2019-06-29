package com.google.android.gms.games.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzi extends zzee implements zzh {
    public zzi() {
        attachInterface(this, "com.google.android.gms.games.internal.IGamesClient");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1001) {
            return false;
        }
        zzl zzur = zzur();
        parcel2.writeNoException();
        zzef.zzb(parcel2, zzur);
        return true;
    }
}
