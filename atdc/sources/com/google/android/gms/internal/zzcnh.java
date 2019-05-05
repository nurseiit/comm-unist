package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzcnh extends zzed implements zzcnf {
    zzcnh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.nearby.internal.connection.IPayloadListener");
    }

    public final void zza(zzcoc zzcoc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcoc);
        zzc(2, zzZ);
    }

    public final void zza(zzcoe zzcoe) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcoe);
        zzc(3, zzZ);
    }
}
