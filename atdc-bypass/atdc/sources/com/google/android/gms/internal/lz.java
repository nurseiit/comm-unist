package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

public final class lz implements Executor {
    private static lz zzbXR = new lz();
    private Handler mHandler = new Handler(Looper.getMainLooper());

    private lz() {
    }

    public static lz zzFb() {
        return zzbXR;
    }

    public final void execute(@NonNull Runnable runnable) {
        this.mHandler.post(runnable);
    }
}
