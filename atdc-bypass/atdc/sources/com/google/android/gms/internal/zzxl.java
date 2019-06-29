package com.google.android.gms.internal;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzxl extends zzed implements zzxj {
    zzxl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager");
    }

    public final void onActivityResult(int i, int i2, Intent intent) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzef.zza(zzZ, (Parcelable) intent);
        zzb(3, zzZ);
    }

    public final void onCreate() throws RemoteException {
        zzb(1, zzZ());
    }

    public final void onDestroy() throws RemoteException {
        zzb(2, zzZ());
    }
}
