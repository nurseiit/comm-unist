package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import com.google.android.gms.fitness.request.SessionReadRequest;
import com.google.android.gms.fitness.request.zzaw;
import com.google.android.gms.fitness.request.zzay;
import com.google.android.gms.fitness.request.zzba;
import com.google.android.gms.fitness.request.zzbc;

public final class zzbww extends zzed implements zzbwv {
    zzbww(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
    }

    public final void zza(SessionInsertRequest sessionInsertRequest) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) sessionInsertRequest);
        zzb(3, zzZ);
    }

    public final void zza(SessionReadRequest sessionReadRequest) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) sessionReadRequest);
        zzb(4, zzZ);
    }

    public final void zza(zzaw zzaw) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzaw);
        zzb(5, zzZ);
    }

    public final void zza(zzay zzay) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzay);
        zzb(1, zzZ);
    }

    public final void zza(zzba zzba) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzba);
        zzb(2, zzZ);
    }

    public final void zza(zzbc zzbc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbc);
        zzb(6, zzZ);
    }
}
