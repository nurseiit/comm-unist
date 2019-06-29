package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzsy extends zzade {
    private /* synthetic */ zzsj zzKb;

    zzsy(zzsj zzsj) {
        this.zzKb = zzsj;
    }

    public final void onRewardedVideoAdClosed() throws RemoteException {
        this.zzKb.zztH.add(new zztc(this));
    }

    public final void onRewardedVideoAdFailedToLoad(int i) throws RemoteException {
        this.zzKb.zztH.add(new zztf(this, i));
    }

    public final void onRewardedVideoAdLeftApplication() throws RemoteException {
        this.zzKb.zztH.add(new zzte(this));
    }

    public final void onRewardedVideoAdLoaded() throws RemoteException {
        this.zzKb.zztH.add(new zzsz(this));
    }

    public final void onRewardedVideoAdOpened() throws RemoteException {
        this.zzKb.zztH.add(new zzta(this));
    }

    public final void onRewardedVideoStarted() throws RemoteException {
        this.zzKb.zztH.add(new zztb(this));
    }

    public final void zza(zzacv zzacv) throws RemoteException {
        this.zzKb.zztH.add(new zztd(this, zzacv));
    }
}
