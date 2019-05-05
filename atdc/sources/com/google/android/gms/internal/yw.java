package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;

final class yw implements ThreadFactory {
    final /* synthetic */ yu zzcjv;

    private yw(yu yuVar) {
        this.zzcjv = yuVar;
    }

    /* synthetic */ yw(yu yuVar, yv yvVar) {
        this(yuVar);
    }

    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.zzcjv.getThreadFactory().newThread(runnable);
        ti zzGY = this.zzcjv.zzGY();
        zzGY.zza(newThread, "FirebaseDatabaseWorker");
        zzGY.zza(newThread, true);
        zzGY.zza(newThread, new yx(this));
        return newThread;
    }
}
