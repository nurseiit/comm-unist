package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.cast.CastStatusCodes;

public final class zzcne extends zzed implements zzcnd {
    zzcne(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
    }

    public final void zza(zzcki zzcki) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcki);
        zzb(CastStatusCodes.MESSAGE_TOO_LARGE, zzZ);
    }

    public final void zza(zzckk zzckk) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzckk);
        zzb(2011, zzZ);
    }

    public final void zza(zzcmk zzcmk) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcmk);
        zzb(2009, zzZ);
    }

    public final void zza(zzcor zzcor) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcor);
        zzb(CastStatusCodes.MESSAGE_SEND_BUFFER_TOO_FULL, zzZ);
    }

    public final void zza(zzcot zzcot) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcot);
        zzb(CastStatusCodes.APPLICATION_NOT_RUNNING, zzZ);
    }

    public final void zza(zzcov zzcov) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcov);
        zzb(2008, zzZ);
    }

    public final void zza(zzcox zzcox) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcox);
        zzb(2001, zzZ);
    }

    public final void zza(zzcoz zzcoz) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcoz);
        zzb(CastStatusCodes.NOT_ALLOWED, zzZ);
    }

    public final void zza(zzcpb zzcpb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcpb);
        zzb(2002, zzZ);
    }

    public final void zza(zzcpd zzcpd) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcpd);
        zzb(2010, zzZ);
    }

    public final void zza(zzcpf zzcpf) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcpf);
        zzb(CastStatusCodes.APPLICATION_NOT_FOUND, zzZ);
    }
}
