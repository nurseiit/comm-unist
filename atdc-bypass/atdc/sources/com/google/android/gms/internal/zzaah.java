package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

@zzzn
public final class zzaah extends zzaaq {
    private final WeakReference<zzzw> zzTm;

    public zzaah(zzzw zzzw) {
        this.zzTm = new WeakReference(zzzw);
    }

    public final void zza(zzaai zzaai) {
        zzzw zzzw = (zzzw) this.zzTm.get();
        if (zzzw != null) {
            zzzw.zza(zzaai);
        }
    }
}
