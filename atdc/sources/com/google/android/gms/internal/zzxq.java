package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzxq extends zzed implements zzxo {
    zzxq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
    }

    public final void zza(zzxm zzxm) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzxm);
        zzb(2, zzZ);
    }

    public final boolean zzas(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        Parcel zza = zza(1, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }
}
