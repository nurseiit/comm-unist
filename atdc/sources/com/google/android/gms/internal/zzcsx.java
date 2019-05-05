package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzcsx extends zzed implements zzcsw {
    zzcsx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.search.internal.ISearchAuthService");
    }

    public final void zza(zzcsu zzcsu, String str, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzcsu);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzb(1, zzZ);
    }

    public final void zzb(zzcsu zzcsu, String str, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzcsu);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzb(2, zzZ);
    }
}
