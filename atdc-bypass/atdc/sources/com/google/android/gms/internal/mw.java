package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;

public final class mw implements qk {
    private final Handler handler = new Handler(Looper.getMainLooper());

    public final void restart() {
    }

    public final void shutdown() {
    }

    public final void zzo(Runnable runnable) {
        this.handler.post(runnable);
    }
}
