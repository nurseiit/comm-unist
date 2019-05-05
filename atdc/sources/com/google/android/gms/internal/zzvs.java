package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzvs implements Runnable {
    private /* synthetic */ zzvp zzNk;

    zzvs(zzvp zzvp) {
        this.zzNk = zzvp;
    }

    public final void run() {
        try {
            this.zzNk.zzNc.onAdLoaded();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdLoaded.", e);
        }
    }
}
