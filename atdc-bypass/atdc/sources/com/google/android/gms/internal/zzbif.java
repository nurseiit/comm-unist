package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzbif extends zzed implements zzbie {
    zzbif(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.config.internal.IConfigService");
    }

    public final void zza(zzbic zzbic, zzbhy zzbhy) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbic);
        zzef.zza(zzZ, (Parcelable) zzbhy);
        zzb(8, zzZ);
    }
}
