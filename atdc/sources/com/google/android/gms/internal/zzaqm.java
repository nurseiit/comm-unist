package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzaqm extends zzed implements zzaql {
    zzaqm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.appinvite.internal.IAppInviteService");
    }

    public final void zza(zzaqj zzaqj) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzaqj);
        zzb(3, zzZ);
    }

    public final void zza(zzaqj zzaqj, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzaqj);
        zzZ.writeString(str);
        zzb(1, zzZ);
    }

    public final void zzb(zzaqj zzaqj, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzaqj);
        zzZ.writeString(str);
        zzb(2, zzZ);
    }
}
