package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbs;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzzn
public class zzajg<T> implements zzajm<T> {
    private final Object mLock = new Object();
    private T mValue;
    private boolean zzMP;
    private Throwable zzaaS;
    private boolean zzaaT;
    private final zzajn zzaaU = new zzajn();

    private final boolean zzim() {
        return this.zzaaS != null || this.zzaaT;
    }

    public boolean cancel(boolean z) {
        if (!z) {
            return false;
        }
        synchronized (this.mLock) {
            if (zzim()) {
                return false;
            }
            this.zzMP = true;
            this.zzaaT = true;
            this.mLock.notifyAll();
            this.zzaaU.zzin();
            return true;
        }
    }

    public T get() throws CancellationException, ExecutionException, InterruptedException {
        Object obj;
        synchronized (this.mLock) {
            if (!zzim()) {
                try {
                    this.mLock.wait();
                } catch (InterruptedException e) {
                    throw e;
                }
            }
            if (this.zzaaS != null) {
                throw new ExecutionException(this.zzaaS);
            } else if (this.zzMP) {
                throw new CancellationException("CallbackFuture was cancelled.");
            } else {
                obj = this.mValue;
            }
        }
        return obj;
    }

    public T get(long j, TimeUnit timeUnit) throws CancellationException, ExecutionException, InterruptedException, TimeoutException {
        Object obj;
        synchronized (this.mLock) {
            if (!zzim()) {
                try {
                    j = timeUnit.toMillis(j);
                    if (j != 0) {
                        this.mLock.wait(j);
                    }
                } catch (InterruptedException e) {
                    throw e;
                }
            }
            if (this.zzaaS != null) {
                throw new ExecutionException(this.zzaaS);
            } else if (!this.zzaaT) {
                throw new TimeoutException("CallbackFuture timed out.");
            } else if (this.zzMP) {
                throw new CancellationException("CallbackFuture was cancelled.");
            } else {
                obj = this.mValue;
            }
        }
        return obj;
    }

    public boolean isCancelled() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzMP;
        }
        return z;
    }

    public boolean isDone() {
        boolean zzim;
        synchronized (this.mLock) {
            zzim = zzim();
        }
        return zzim;
    }

    public final void zzb(Throwable th) {
        synchronized (this.mLock) {
            if (this.zzMP) {
            } else if (zzim()) {
                zzbs.zzbD().zza(new IllegalStateException("Provided CallbackFuture with multiple values."), "CallbackFuture.provideException");
            } else {
                this.zzaaS = th;
                this.mLock.notifyAll();
                this.zzaaU.zzin();
            }
        }
    }

    public final void zzc(Runnable runnable) {
        this.zzaaU.zzc(runnable);
    }

    public final void zzd(Runnable runnable) {
        this.zzaaU.zzd(runnable);
    }

    public final void zzg(@Nullable T t) {
        synchronized (this.mLock) {
            if (this.zzMP) {
            } else if (zzim()) {
                zzbs.zzbD().zza(new IllegalStateException("Provided CallbackFuture with multiple values."), "CallbackFuture.provideValue");
            } else {
                this.zzaaT = true;
                this.mValue = t;
                this.mLock.notifyAll();
                this.zzaaU.zzin();
            }
        }
    }
}
