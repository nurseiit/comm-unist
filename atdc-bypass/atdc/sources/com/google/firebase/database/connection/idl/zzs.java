package com.google.firebase.database.connection.idl;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzs extends zzed implements zzq {
    zzs(IBinder iBinder) {
        super(iBinder, "com.google.firebase.database.connection.idl.IListenHashProvider");
    }

    public final String zzFY() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final boolean zzFZ() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final zza zzGz() throws RemoteException {
        Parcel zza = zza(3, zzZ());
        zza zza2 = (zza) zzef.zza(zza, zza.CREATOR);
        zza.recycle();
        return zza2;
    }
}
