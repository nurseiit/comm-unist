package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzbjn extends zzed implements zzbjl {
    zzbjn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
    }

    public final void zza(zzbjd zzbjd) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbjd);
        zzb(2, zzZ);
    }

    public final void zza(zzbjh zzbjh) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbjh);
        zzb(1, zzZ);
    }
}
