package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zzai;
import java.lang.ref.WeakReference;

final class zzog {
    private final WeakReference<zzaka> zzIh;
    private String zzIi;

    public zzog(zzaka zzaka) {
        this.zzIh = new WeakReference(zzaka);
    }

    private final zzrd zze(zzai zzai) {
        return new zzoh(this, zzai);
    }

    private final zzrd zzf(zzai zzai) {
        return new zzoj(this, zzai);
    }

    private final zzrd zzg(zzai zzai) {
        return new zzok(this, zzai);
    }

    private final zzrd zzh(zzai zzai) {
        return new zzol(this, zzai);
    }
}
