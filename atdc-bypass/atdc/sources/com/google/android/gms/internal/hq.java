package com.google.android.gms.internal;

import android.view.Choreographer.FrameCallback;

final class hq implements FrameCallback {
    private /* synthetic */ hp zzbUv;

    hq(hp hpVar) {
        this.zzbUv = hpVar;
    }

    public final void doFrame(long j) {
        this.zzbUv.doFrame(j);
    }
}
