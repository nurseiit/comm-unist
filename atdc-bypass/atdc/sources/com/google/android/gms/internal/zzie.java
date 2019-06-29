package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzie extends zzed implements zzid {
    zzie(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    public final zzhx zza(zzia zzia) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzia);
        Parcel zza = zza(1, zzZ);
        zzhx zzhx = (zzhx) zzef.zza(zza, zzhx.CREATOR);
        zza.recycle();
        return zzhx;
    }
}
