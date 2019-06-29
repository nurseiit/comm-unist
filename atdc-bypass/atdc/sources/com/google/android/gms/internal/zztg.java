package com.google.android.gms.internal;

import android.os.RemoteException;

final class zztg implements Runnable {
    private /* synthetic */ zzth zzKg;
    private /* synthetic */ zzti zzKh;

    zztg(zzsj zzsj, zzth zzth, zzti zzti) {
        this.zzKg = zzth;
        this.zzKh = zzti;
    }

    public final void run() {
        try {
            this.zzKg.zzb(this.zzKh);
        } catch (RemoteException e) {
            zzajc.zzc("Could not propagate interstitial ad event.", e);
        }
    }
}
