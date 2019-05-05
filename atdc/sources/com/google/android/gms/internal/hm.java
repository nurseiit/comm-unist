package com.google.android.gms.internal;

final class hm extends hp {
    private /* synthetic */ hl zzbUr;

    hm(hl hlVar) {
        this.zzbUr = hlVar;
    }

    public final void doFrame(long j) {
        if (!this.zzbUr.zzb(this.zzbUr.zzbUn) && !this.zzbUr.zzbUn.isStarted()) {
            if (this.zzbUr.zzbUp != null) {
                this.zzbUr.zzbUp.run();
            }
            this.zzbUr.zzbUn.start();
        }
    }
}
