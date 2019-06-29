package com.google.android.gms.internal;

import android.view.View;

final class zzakc implements Runnable {
    private /* synthetic */ View val$view;
    private /* synthetic */ zzaet zzabH;
    private /* synthetic */ int zzabI;
    private /* synthetic */ zzakb zzabJ;

    zzakc(zzakb zzakb, View view, zzaet zzaet, int i) {
        this.zzabJ = zzakb;
        this.val$view = view;
        this.zzabH = zzaet;
        this.zzabI = i;
    }

    public final void run() {
        this.zzabJ.zza(this.val$view, this.zzabH, this.zzabI - 1);
    }
}
