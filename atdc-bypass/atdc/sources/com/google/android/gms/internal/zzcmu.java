package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzcmu extends zzed implements zzcms {
    zzcmu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener");
    }

    public final void zza(zzcno zzcno) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcno);
        zzc(2, zzZ);
    }

    public final void zza(zzcnu zzcnu) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcnu);
        zzc(3, zzZ);
    }

    public final void zza(zzcnw zzcnw) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcnw);
        zzc(4, zzZ);
    }
}
