package com.google.android.gms.internal;

import java.lang.Thread.UncaughtExceptionHandler;

final class tj implements ti {
    tj() {
    }

    public final void zza(Thread thread, String str) {
        thread.setName(str);
    }

    public final void zza(Thread thread, UncaughtExceptionHandler uncaughtExceptionHandler) {
        thread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
    }

    public final void zza(Thread thread, boolean z) {
        thread.setDaemon(true);
    }
}
