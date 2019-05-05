package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzr extends zzee implements zzq {
    public zzr() {
        attachInterface(this, "com.google.firebase.database.connection.idl.IListenHashProvider");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                String zzFY = zzFY();
                parcel2.writeNoException();
                parcel2.writeString(zzFY);
                return true;
            case 2:
                boolean zzFZ = zzFZ();
                parcel2.writeNoException();
                zzef.zza(parcel2, zzFZ);
                return true;
            case 3:
                zza zzGz = zzGz();
                parcel2.writeNoException();
                zzef.zzb(parcel2, zzGz);
                return true;
            default:
                return false;
        }
    }
}
