package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzvw implements Runnable {
    private /* synthetic */ zzvp zzNk;

    zzvw(zzvp zzvp) {
        this.zzNk = zzvp;
    }

    public final void run() {
        try {
            this.zzNk.zzNc.onAdOpened();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdOpened.", e);
        }
    }
}
