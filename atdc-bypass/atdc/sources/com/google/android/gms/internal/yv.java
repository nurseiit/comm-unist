package com.google.android.gms.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

final class yv extends ScheduledThreadPoolExecutor {
    private /* synthetic */ yu zzcjv;

    yv(yu yuVar, int i, ThreadFactory threadFactory) {
        this.zzcjv = yuVar;
        super(1, threadFactory);
    }

    /* Access modifiers changed, original: protected|final */
    public final void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (th == null && (runnable instanceof Future)) {
            Future future = (Future) runnable;
            try {
                if (future.isDone()) {
                    future.get();
                }
            } catch (CancellationException unused) {
            } catch (ExecutionException e) {
                th = e.getCause();
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
            }
        }
        if (th != null) {
            this.zzcjv.zzf(th);
        }
    }
}
