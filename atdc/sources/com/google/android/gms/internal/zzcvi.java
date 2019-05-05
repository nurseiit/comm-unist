package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzcvi extends zzed implements zzcvg {
    zzcvi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.tagmanager.internal.ITagManagerService");
    }

    public final void dispatch() throws RemoteException {
        zzb(102, zzZ());
    }

    public final void zzCr() throws RemoteException {
        zzb(3, zzZ());
    }

    public final void zza(String str, Bundle bundle, String str2, long j, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzZ.writeString(str2);
        zzZ.writeLong(j);
        zzef.zza(zzZ, z);
        zzb(101, zzZ);
    }

    public final void zza(String str, String str2, String str3, zzcvd zzcvd) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzZ.writeString(str3);
        zzef.zza(zzZ, (IInterface) zzcvd);
        zzb(2, zzZ);
    }

    public final void zzn(String str, String str2, String str3) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzZ.writeString(str3);
        zzb(1, zzZ);
    }
}
