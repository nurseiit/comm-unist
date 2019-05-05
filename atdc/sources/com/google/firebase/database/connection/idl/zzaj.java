package com.google.firebase.database.connection.idl;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;

public final class zzaj extends zzed implements zzah {
    zzaj(IBinder iBinder) {
        super(iBinder, "com.google.firebase.database.connection.idl.IRequestResultCallback");
    }

    public final void zzaa(String str, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzb(1, zzZ);
    }
}
