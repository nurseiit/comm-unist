package com.google.firebase.database.connection.idl;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;

public final class zzp extends zzed implements zzn {
    zzp(IBinder iBinder) {
        super(iBinder, "com.google.firebase.database.connection.idl.IGetTokenCallback");
    }

    public final void onError(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(2, zzZ);
    }

    public final void zzgF(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(1, zzZ);
    }
}
