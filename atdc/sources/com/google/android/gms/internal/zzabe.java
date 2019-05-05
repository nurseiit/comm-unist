package com.google.android.gms.internal;

final class zzabe implements Runnable {
    private /* synthetic */ zzaaz zzUc;

    zzabe(zzaaz zzaaz) {
        this.zzUc = zzaaz;
    }

    public final void run() {
        if (this.zzUc.zzUb != null) {
            this.zzUc.zzUb.release();
            this.zzUc.zzUb = null;
        }
    }
}
