package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.view.View;
import java.lang.ref.WeakReference;

public final class zzfk implements zzgs {
    private WeakReference<zzny> zzxi;

    public zzfk(zzny zzny) {
        this.zzxi = new WeakReference(zzny);
    }

    @Nullable
    public final View zzcv() {
        zzny zzny = (zzny) this.zzxi.get();
        return zzny != null ? zzny.zzeu() : null;
    }

    public final boolean zzcw() {
        return this.zzxi.get() == null;
    }

    public final zzgs zzcx() {
        return new zzfm((zzny) this.zzxi.get());
    }
}
