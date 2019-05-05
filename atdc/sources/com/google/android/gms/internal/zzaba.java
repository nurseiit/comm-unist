package com.google.android.gms.internal;

final class zzaba implements Runnable {
    private /* synthetic */ zzaaz zzUc;
    private /* synthetic */ zzafg zzsW;

    zzaba(zzaaz zzaaz, zzafg zzafg) {
        this.zzUc = zzaaz;
        this.zzsW = zzafg;
    }

    public final void run() {
        this.zzUc.zzSm.zza(this.zzsW);
        if (this.zzUc.zzUb != null) {
            this.zzUc.zzUb.release();
            this.zzUc.zzUb = null;
        }
    }
}
