package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import com.google.android.gms.fitness.request.zzag;
import com.google.android.gms.fitness.request.zzbg;
import com.google.android.gms.fitness.request.zzbk;
import com.google.android.gms.fitness.request.zzd;

public final class zzbwi extends zzed implements zzbwh {
    zzbwi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.internal.IGoogleFitBleApi");
    }

    public final void zza(StartBleScanRequest startBleScanRequest) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) startBleScanRequest);
        zzb(1, zzZ);
    }

    public final void zza(zzag zzag) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzag);
        zzb(5, zzZ);
    }

    public final void zza(zzbg zzbg) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbg);
        zzb(2, zzZ);
    }

    public final void zza(zzbk zzbk) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbk);
        zzb(4, zzZ);
    }

    public final void zza(zzd zzd) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzd);
        zzb(3, zzZ);
    }
}
