package com.google.android.gms.internal;

import android.content.Context;

final class zzabq implements Runnable {
    private /* synthetic */ zzabu zzUA;
    private /* synthetic */ zzabl zzUF;
    private /* synthetic */ zzaae zzUG;
    private /* synthetic */ Context zztF;

    zzabq(zzabl zzabl, Context context, zzabu zzabu, zzaae zzaae) {
        this.zzUF = zzabl;
        this.zztF = context;
        this.zzUA = zzabu;
        this.zzUG = zzaae;
    }

    public final void run() {
        this.zzUF.zzUr.zza(this.zztF, this.zzUA, this.zzUG.zzvT);
    }
}
