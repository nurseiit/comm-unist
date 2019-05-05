package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzwa implements Runnable {
    private /* synthetic */ zzvp zzNk;

    zzwa(zzvp zzvp) {
        this.zzNk = zzvp;
    }

    public final void run() {
        try {
            this.zzNk.zzNc.onAdLeftApplication();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdLeftApplication.", e);
        }
    }
}
