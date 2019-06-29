package com.google.android.gms.internal;

import java.lang.Thread.UncaughtExceptionHandler;

final class yx implements UncaughtExceptionHandler {
    private /* synthetic */ yw zzcjw;

    yx(yw ywVar) {
        this.zzcjw = ywVar;
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        this.zzcjw.zzcjv.zzf(th);
    }
}
