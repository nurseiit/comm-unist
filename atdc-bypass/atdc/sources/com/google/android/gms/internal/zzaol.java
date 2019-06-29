package com.google.android.gms.internal;

final class zzaol implements zzanq {
    final /* synthetic */ zzaoc zzadv;
    final /* synthetic */ int zzadw;
    private /* synthetic */ zzamj zzaiE;
    final /* synthetic */ zzaok zzaiF;

    zzaol(zzaok zzaok, int i, zzamj zzamj, zzaoc zzaoc) {
        this.zzaiF = zzaok;
        this.zzadw = i;
        this.zzaiE = zzamj;
        this.zzadv = zzaoc;
    }

    public final void zzc(Throwable th) {
        this.zzaiF.mHandler.post(new zzaom(this));
    }
}
