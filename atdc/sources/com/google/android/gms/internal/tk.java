package com.google.android.gms.internal;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class tk implements qk {
    private final ThreadPoolExecutor zzcfi;

    public tk(ThreadFactory threadFactory, ti tiVar) {
        this.zzcfi = new ThreadPoolExecutor(1, 1, 3, TimeUnit.SECONDS, new LinkedBlockingQueue(), new tl(this, threadFactory, tiVar));
    }

    public final void restart() {
        this.zzcfi.setCorePoolSize(1);
    }

    public final void shutdown() {
        this.zzcfi.setCorePoolSize(0);
    }

    public final void zzo(Runnable runnable) {
        this.zzcfi.execute(runnable);
    }
}
