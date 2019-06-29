package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzls implements Runnable {
    private /* synthetic */ zzlr zzBv;

    zzls(zzlr zzlr) {
        this.zzBv = zzlr;
    }

    public final void run() {
        if (this.zzBv.zzBu != null) {
            try {
                this.zzBv.zzBu.onRewardedVideoAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzajc.zzc("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
