package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.view.Choreographer.FrameCallback;

public abstract class hp {
    private Runnable zzbUt;
    private FrameCallback zzbUu;

    public abstract void doFrame(long j);

    /* Access modifiers changed, original: final */
    @TargetApi(16)
    public final FrameCallback zzEe() {
        if (this.zzbUu == null) {
            this.zzbUu = new hq(this);
        }
        return this.zzbUu;
    }

    /* Access modifiers changed, original: final */
    public final Runnable zzEf() {
        if (this.zzbUt == null) {
            this.zzbUt = new hr(this);
        }
        return this.zzbUt;
    }
}
