package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class zzcuu extends ThreadPoolExecutor {
    private final Context mContext;

    public zzcuu(Context context, int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        super(1, 1, 0, timeUnit, blockingQueue, threadFactory);
        this.mContext = context;
    }

    /* Access modifiers changed, original: protected|final */
    public final void afterExecute(Runnable runnable, Throwable th) {
        if (th != null) {
            zzcup.zza("Uncaught exception: ", th, this.mContext);
        }
    }
}
