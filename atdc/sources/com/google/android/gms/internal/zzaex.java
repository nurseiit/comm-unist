package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.Callable;

final /* synthetic */ class zzaex implements Callable {
    private final zzaew zzXH;
    private final Context zzXI;

    zzaex(zzaew zzaew, Context context) {
        this.zzXH = zzaew;
        this.zzXI = context;
    }

    public final Object call() {
        return this.zzXH.zzy(this.zzXI);
    }
}
