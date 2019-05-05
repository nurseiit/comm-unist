package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzaur extends zzed implements zzauq {
    zzaur(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.internal.IMediaRouterCallback");
    }

    public final void zza(String str, Bundle bundle, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzZ.writeInt(i);
        zzb(6, zzZ);
    }

    public final void zzc(String str, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(1, zzZ);
    }

    public final void zzd(String str, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(2, zzZ);
    }

    public final void zze(String str, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(3, zzZ);
    }

    public final void zzf(String str, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(4, zzZ);
    }
}
