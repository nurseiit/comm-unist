package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzbkk extends zzed implements zzbkj {
    zzbkk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.contextmanager.internal.IContextManagerService");
    }

    public final void zza(zzbkh zzbkh, String str, String str2, String str3, zzaub zzaub) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbkh);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzZ.writeString(str3);
        zzef.zza(zzZ, (Parcelable) zzaub);
        zzb(15, zzZ);
    }

    public final void zza(zzbkh zzbkh, String str, String str2, String str3, zzbja zzbja) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbkh);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzZ.writeString(str3);
        zzef.zza(zzZ, (Parcelable) zzbja);
        zzb(16, zzZ);
    }

    public final void zza(zzbkh zzbkh, String str, String str2, String str3, zzbjj zzbjj) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbkh);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzZ.writeString(str3);
        zzef.zza(zzZ, (Parcelable) zzbjj);
        zzb(13, zzZ);
    }
}
