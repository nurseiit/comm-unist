package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zzai;
import java.util.Map;

final class zzoj implements zzrd {
    private /* synthetic */ zzai zzIj;
    private /* synthetic */ zzog zzIk;

    zzoj(zzog zzog, zzai zzai) {
        this.zzIk = zzog;
        this.zzIj = zzai;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        zzaka = (zzaka) this.zzIk.zzIh.get();
        if (zzaka == null) {
            this.zzIj.zzb("/showOverlay", (zzrd) this);
        } else {
            zzaka.getView().setVisibility(0);
        }
    }
}
