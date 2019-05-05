package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzcnc extends zzed implements zzcna {
    zzcnc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.nearby.internal.connection.IDiscoveryListener");
    }

    public final void zza(zzcny zzcny) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcny);
        zzc(2, zzZ);
    }

    public final void zza(zzcoa zzcoa) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcoa);
        zzc(3, zzZ);
    }

    public final void zza(zzcok zzcok) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcok);
        zzc(4, zzZ);
    }
}
