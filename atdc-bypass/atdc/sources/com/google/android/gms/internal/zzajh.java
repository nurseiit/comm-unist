package com.google.android.gms.internal;

import java.util.concurrent.TimeUnit;

@zzzn
public final class zzajh<T> implements zzajm<T> {
    private final T mValue;
    private final zzajn zzaaU = new zzajn();

    public zzajh(T t) {
        this.mValue = t;
        this.zzaaU.zzin();
    }

    public final boolean cancel(boolean z) {
        return false;
    }

    public final T get() {
        return this.mValue;
    }

    public final T get(long j, TimeUnit timeUnit) {
        return this.mValue;
    }

    public final boolean isCancelled() {
        return false;
    }

    public final boolean isDone() {
        return true;
    }

    public final void zzc(Runnable runnable) {
        this.zzaaU.zzc(runnable);
    }

    public final void zzd(Runnable runnable) {
        this.zzaaU.zzd(runnable);
    }
}
