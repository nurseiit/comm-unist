package com.google.android.gms.internal;

import java.lang.Thread.UncaughtExceptionHandler;

final class zzamk implements UncaughtExceptionHandler {
    private /* synthetic */ zzamj zzaga;

    zzamk(zzamj zzamj) {
        this.zzaga = zzamj;
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        zzaoc zzkF = this.zzaga.zzkF();
        if (zzkF != null) {
            zzkF.zze("Job execution failed", th);
        }
    }
}
