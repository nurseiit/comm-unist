package com.google.android.gms.internal;

import android.view.View;
import java.lang.ref.WeakReference;

public final class zzfo implements zzgs {
    private final WeakReference<View> zzxl;
    private final WeakReference<zzaff> zzxm;

    public zzfo(View view, zzaff zzaff) {
        this.zzxl = new WeakReference(view);
        this.zzxm = new WeakReference(zzaff);
    }

    public final View zzcv() {
        return (View) this.zzxl.get();
    }

    public final boolean zzcw() {
        return this.zzxl.get() == null || this.zzxm.get() == null;
    }

    public final zzgs zzcx() {
        return new zzfn((View) this.zzxl.get(), (zzaff) this.zzxm.get());
    }
}
