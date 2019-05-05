package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzsk extends zzjp {
    private /* synthetic */ zzsj zzKb;

    zzsk(zzsj zzsj) {
        this.zzKb = zzsj;
    }

    public final void onAdClicked() throws RemoteException {
        this.zzKb.zztH.add(new zzsr(this));
    }

    public final void onAdClosed() throws RemoteException {
        this.zzKb.zztH.add(new zzsl(this));
    }

    public final void onAdFailedToLoad(int i) throws RemoteException {
        this.zzKb.zztH.add(new zzsm(this, i));
        zzafr.v("Pooled interstitial failed to load.");
    }

    public final void onAdImpression() throws RemoteException {
        this.zzKb.zztH.add(new zzsq(this));
    }

    public final void onAdLeftApplication() throws RemoteException {
        this.zzKb.zztH.add(new zzsn(this));
    }

    public final void onAdLoaded() throws RemoteException {
        this.zzKb.zztH.add(new zzso(this));
        zzafr.v("Pooled interstitial loaded.");
    }

    public final void onAdOpened() throws RemoteException {
        this.zzKb.zztH.add(new zzsp(this));
    }
}
