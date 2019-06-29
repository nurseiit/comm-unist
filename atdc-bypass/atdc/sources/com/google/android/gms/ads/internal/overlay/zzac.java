package com.google.android.gms.ads.internal.overlay;

final class zzac implements Runnable {
    private /* synthetic */ zzaa zzPF;

    zzac(zzaa zzaa) {
        this.zzPF = zzaa;
    }

    public final void run() {
        this.zzPF.zza("surfaceDestroyed", new String[0]);
    }
}
