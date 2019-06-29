package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zzai;
import java.util.Map;

final class zzok implements zzrd {
    private /* synthetic */ zzai zzIj;
    private /* synthetic */ zzog zzIk;

    zzok(zzog zzog, zzai zzai) {
        this.zzIk = zzog;
        this.zzIj = zzai;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        zzaka = (zzaka) this.zzIk.zzIh.get();
        if (zzaka == null) {
            this.zzIj.zzb("/hideOverlay", (zzrd) this);
        } else {
            zzaka.getView().setVisibility(8);
        }
    }
}
