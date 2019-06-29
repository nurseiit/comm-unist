package com.google.android.gms.ads.internal.overlay;

final class zzab implements Runnable {
    private /* synthetic */ zzaa zzPF;

    zzab(zzaa zzaa) {
        this.zzPF = zzaa;
    }

    public final void run() {
        this.zzPF.zza("surfaceCreated", new String[0]);
    }
}
