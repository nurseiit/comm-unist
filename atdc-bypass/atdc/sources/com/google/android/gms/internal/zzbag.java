package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzbag extends zzed implements zzbaf {
    zzbag(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.clearcut.internal.IClearcutLoggerService");
    }

    public final void zza(zzbad zzbad, zzazu zzazu) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbad);
        zzef.zza(zzZ, (Parcelable) zzazu);
        zzc(1, zzZ);
    }
}
