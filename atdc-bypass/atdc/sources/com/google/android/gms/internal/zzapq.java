package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.firebase.appindexing.internal.zza;

public final class zzapq extends zzed implements zzapp {
    zzapq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
    }

    public final void zza(zzapr zzapr, String str, zzapl[] zzaplArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzapr);
        zzZ.writeString(null);
        zzZ.writeTypedArray(zzaplArr, 0);
        zzb(1, zzZ);
    }

    public final void zza(zzapr zzapr, zza[] zzaArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzapr);
        zzZ.writeTypedArray(zzaArr, 0);
        zzb(7, zzZ);
    }
}
