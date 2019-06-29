package com.google.android.gms.internal;

import java.io.InputStream;
import java.util.concurrent.Callable;

final class zzail implements Callable<T> {
    private /* synthetic */ InputStream zzaam;
    private /* synthetic */ zzaij zzaan;

    zzail(zzaij zzaij, InputStream inputStream) {
        this.zzaan = zzaij;
        this.zzaam = inputStream;
    }

    public final T call() {
        return this.zzaan.zzaaj.zzh(this.zzaam);
    }
}
