package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzuo implements Runnable {
    private /* synthetic */ zzuh zzMX;

    zzuo(zzun zzun, zzuh zzuh) {
        this.zzMX = zzuh;
    }

    public final void run() {
        try {
            this.zzMX.zzMH.destroy();
        } catch (RemoteException e) {
            zzajc.zzc("Could not destroy mediation adapter.", e);
        }
    }
}
