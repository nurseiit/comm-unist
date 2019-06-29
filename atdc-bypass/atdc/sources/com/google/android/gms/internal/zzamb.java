package com.google.android.gms.internal;

final class zzamb implements Runnable {
    private /* synthetic */ zzaly zzafD;
    private /* synthetic */ String zzafF;
    private /* synthetic */ Runnable zzafG;

    zzamb(zzaly zzaly, String str, Runnable runnable) {
        this.zzafD = zzaly;
        this.zzafF = str;
        this.zzafG = runnable;
    }

    public final void run() {
        this.zzafD.zzafB.zzbw(this.zzafF);
        if (this.zzafG != null) {
            this.zzafG.run();
        }
    }
}
