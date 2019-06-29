package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzlm implements Runnable {
    private /* synthetic */ zzll zzBs;

    zzlm(zzll zzll) {
        this.zzBs = zzll;
    }

    public final void run() {
        if (this.zzBs.zzBr.zztK != null) {
            try {
                this.zzBs.zzBr.zztK.onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzajc.zzc("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
