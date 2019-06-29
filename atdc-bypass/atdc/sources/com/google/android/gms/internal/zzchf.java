package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class zzchf implements Callable<List<zzcjk>> {
    private /* synthetic */ zzceh zzbte;
    private /* synthetic */ zzcgq zzbtf;

    zzchf(zzcgq zzcgq, zzceh zzceh) {
        this.zzbtf = zzcgq;
        this.zzbte = zzceh;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.zzbtf.zzboe.zzze();
        return this.zzbtf.zzboe.zzwz().zzdP(this.zzbte.packageName);
    }
}
