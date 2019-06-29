package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.overlay.zzm;

final class zzake implements Runnable {
    private /* synthetic */ zzakb zzabJ;

    zzake(zzakb zzakb) {
        this.zzabJ = zzakb;
    }

    public final void run() {
        this.zzabJ.zzJH.zziJ();
        zzm zziu = this.zzabJ.zzJH.zziu();
        if (zziu != null) {
            zziu.zzfL();
        }
        if (this.zzabJ.zzabt != null) {
            this.zzabJ.zzabt.zzaT();
            this.zzabJ.zzabt = null;
        }
    }
}
