package com.google.android.gms.internal;

final class zzamc implements Runnable {
    private /* synthetic */ zzaly zzafD;
    private /* synthetic */ zzanx zzafH;

    zzamc(zzaly zzaly, zzanx zzanx) {
        this.zzafD = zzaly;
        this.zzafH = zzanx;
    }

    public final void run() {
        this.zzafD.zzafB.zza(this.zzafH);
    }
}
