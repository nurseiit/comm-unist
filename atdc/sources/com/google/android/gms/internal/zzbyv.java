package com.google.android.gms.internal;

import com.google.android.gms.fitness.request.OnDataPointListener;
import com.google.android.gms.fitness.request.zzam;

final class zzbyv implements zzbyx {
    private /* synthetic */ OnDataPointListener zzaVY;

    zzbyv(zzbys zzbys, OnDataPointListener onDataPointListener) {
        this.zzaVY = onDataPointListener;
    }

    public final void zztS() {
        zzam.zztV().zzc(this.zzaVY);
    }
}
