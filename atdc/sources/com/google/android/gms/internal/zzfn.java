package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.view.View;

public final class zzfn implements zzgs {
    @Nullable
    private final View mView;
    @Nullable
    private final zzaff zzxk;

    public zzfn(View view, zzaff zzaff) {
        this.mView = view;
        this.zzxk = zzaff;
    }

    public final View zzcv() {
        return this.mView;
    }

    public final boolean zzcw() {
        return this.zzxk == null || this.mView == null;
    }

    public final zzgs zzcx() {
        return this;
    }
}
