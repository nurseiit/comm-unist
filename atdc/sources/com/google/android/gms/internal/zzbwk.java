package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.request.zzr;
import com.google.android.gms.fitness.request.zzz;

public final class zzbwk extends zzed implements zzbwj {
    zzbwk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.internal.IGoogleFitConfigApi");
    }

    public final void zza(DataTypeCreateRequest dataTypeCreateRequest) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) dataTypeCreateRequest);
        zzb(1, zzZ);
    }

    public final void zza(zzr zzr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzr);
        zzb(2, zzZ);
    }

    public final void zza(zzz zzz) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzz);
        zzb(22, zzZ);
    }
}
