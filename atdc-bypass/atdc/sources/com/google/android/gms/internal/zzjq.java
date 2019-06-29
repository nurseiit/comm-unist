package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzjq extends zzed implements zzjo {
    zzjq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    public final void onAdClicked() throws RemoteException {
        zzb(6, zzZ());
    }

    public final void onAdClosed() throws RemoteException {
        zzb(1, zzZ());
    }

    public final void onAdFailedToLoad(int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzb(2, zzZ);
    }

    public final void onAdImpression() throws RemoteException {
        zzb(7, zzZ());
    }

    public final void onAdLeftApplication() throws RemoteException {
        zzb(3, zzZ());
    }

    public final void onAdLoaded() throws RemoteException {
        zzb(4, zzZ());
    }

    public final void onAdOpened() throws RemoteException {
        zzb(5, zzZ());
    }
}
