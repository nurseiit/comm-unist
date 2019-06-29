package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;

final class zzaim implements Runnable {
    private /* synthetic */ zzaij zzaan;
    private /* synthetic */ zzajm zzaao;

    zzaim(zzaij zzaij, zzajm zzajm) {
        this.zzaan = zzaij;
        this.zzaao = zzajm;
    }

    public final void run() {
        try {
            this.zzaan.zzaD.zzb(this.zzaao.get());
        } catch (Exception e) {
            zzajc.zzb("Error occured while dispatching http response in getter.", e);
            zzbs.zzbD().zza(e, "HttpGetter.deliverResponse.1");
        }
    }
}
