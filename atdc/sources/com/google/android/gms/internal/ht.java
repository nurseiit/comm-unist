package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.view.Choreographer;

@TargetApi(16)
final class ht extends hn {
    private Choreographer zzbUw = Choreographer.getInstance();

    public final void zza(hp hpVar) {
        this.zzbUw.postFrameCallback(hpVar.zzEe());
    }
}
