package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzadf extends zzed implements zzadd {
    zzadf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    public final void onRewardedVideoAdClosed() throws RemoteException {
        zzb(4, zzZ());
    }

    public final void onRewardedVideoAdFailedToLoad(int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzb(7, zzZ);
    }

    public final void onRewardedVideoAdLeftApplication() throws RemoteException {
        zzb(6, zzZ());
    }

    public final void onRewardedVideoAdLoaded() throws RemoteException {
        zzb(1, zzZ());
    }

    public final void onRewardedVideoAdOpened() throws RemoteException {
        zzb(2, zzZ());
    }

    public final void onRewardedVideoStarted() throws RemoteException {
        zzb(3, zzZ());
    }

    public final void zza(zzacv zzacv) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzacv);
        zzb(5, zzZ);
    }
}
