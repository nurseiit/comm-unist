package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzvy implements Runnable {
    private /* synthetic */ zzvp zzNk;

    zzvy(zzvp zzvp) {
        this.zzNk = zzvp;
    }

    public final void run() {
        try {
            this.zzNk.zzNc.onAdClosed();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdClosed.", e);
        }
    }
}
