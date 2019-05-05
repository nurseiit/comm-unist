package com.google.firebase.database.connection.idl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzm extends zzed implements zzk {
    zzm(IBinder iBinder) {
        super(iBinder, "com.google.firebase.database.connection.idl.IConnectionAuthTokenProvider");
    }

    public final void zza(boolean z, zzn zzn) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzef.zza(zzZ, (IInterface) zzn);
        zzb(1, zzZ);
    }
}
