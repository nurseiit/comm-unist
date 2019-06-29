package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzaao extends zzed implements zzaam {
    zzaao(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    public final void zza(zzaae zzaae, zzaap zzaap) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzaae);
        zzef.zza(zzZ, (IInterface) zzaap);
        zzb(2, zzZ);
    }

    public final void zza(zzaax zzaax, zzaas zzaas) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzaax);
        zzef.zza(zzZ, (IInterface) zzaas);
        zzb(3, zzZ);
    }

    public final zzaai zzc(zzaae zzaae) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzaae);
        Parcel zza = zza(1, zzZ);
        zzaai zzaai = (zzaai) zzef.zza(zza, zzaai.CREATOR);
        zza.recycle();
        return zzaai;
    }
}
