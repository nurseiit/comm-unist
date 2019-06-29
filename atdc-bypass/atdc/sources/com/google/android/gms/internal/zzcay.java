package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzcay extends zzed implements zzcax {
    zzcay(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    public final zzcav zza(zzcat zzcat) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcat);
        Parcel zza = zza(1, zzZ);
        zzcav zzcav = (zzcav) zzef.zza(zza, zzcav.CREATOR);
        zza.recycle();
        return zzcav;
    }
}
