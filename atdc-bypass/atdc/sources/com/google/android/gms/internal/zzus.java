package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzus extends zzed implements zzuq {
    zzus(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public final zzut zzah(String str) throws RemoteException {
        zzut zzut;
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        Parcel zza = zza(1, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzut = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzut = queryLocalInterface instanceof zzut ? (zzut) queryLocalInterface : new zzuv(readStrongBinder);
        }
        zza.recycle();
        return zzut;
    }

    public final boolean zzai(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        Parcel zza = zza(2, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }
}
