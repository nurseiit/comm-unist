package com.google.android.gms.internal;

final class zzaxv implements Runnable {
    private /* synthetic */ zzaxt zzaxJ;

    private zzaxv(zzaxt zzaxt) {
        this.zzaxJ = zzaxt;
    }

    public final void run() {
        this.zzaxJ.zzaxI = false;
        this.zzaxJ.zzZ(this.zzaxJ.zzz(this.zzaxJ.zzvw.elapsedRealtime()));
    }
}
