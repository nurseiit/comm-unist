package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zzai;

final class zzom extends zzym {
    private /* synthetic */ zzog zzIk;

    zzom(zzog zzog) {
        this.zzIk = zzog;
    }

    public final void zzd(zzai zzai) {
        zzaka zzaka = (zzaka) this.zzIk.zzIh.get();
        if (zzaka != null) {
            zzai.zza("/loadHtml", this.zzIk.zze(zzai));
            zzai.zza("/showOverlay", this.zzIk.zzf(zzai));
            zzai.zza("/hideOverlay", this.zzIk.zzg(zzai));
            zzaka.zziw().zza("/sendMessageToSdk", this.zzIk.zzh(zzai));
        }
    }
}
