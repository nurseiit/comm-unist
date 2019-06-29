package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.DataSourcesRequest;
import com.google.android.gms.fitness.request.zzan;
import com.google.android.gms.fitness.request.zzaq;

public final class zzbwu extends zzed implements zzbwt {
    zzbwu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.internal.IGoogleFitSensorsApi");
    }

    public final void zza(DataSourcesRequest dataSourcesRequest) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) dataSourcesRequest);
        zzb(1, zzZ);
    }

    public final void zza(zzan zzan) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzan);
        zzb(2, zzZ);
    }

    public final void zza(zzaq zzaq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzaq);
        zzb(3, zzZ);
    }
}
