package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.zzai;
import com.google.android.gms.fitness.request.zzbi;
import com.google.android.gms.fitness.request.zzbm;

public final class zzbws extends zzed implements zzbwr {
    zzbws(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.internal.IGoogleFitRecordingApi");
    }

    public final void zza(zzai zzai) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzai);
        zzb(3, zzZ);
    }

    public final void zza(zzbi zzbi) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbi);
        zzb(1, zzZ);
    }

    public final void zza(zzbm zzbm) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbm);
        zzb(2, zzZ);
    }
}
