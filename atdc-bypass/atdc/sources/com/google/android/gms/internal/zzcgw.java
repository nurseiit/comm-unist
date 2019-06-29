package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class zzcgw implements Callable<List<zzcjk>> {
    private /* synthetic */ zzceh zzbte;
    private /* synthetic */ zzcgq zzbtf;
    private /* synthetic */ String zzbth;
    private /* synthetic */ String zzbti;

    zzcgw(zzcgq zzcgq, zzceh zzceh, String str, String str2) {
        this.zzbtf = zzcgq;
        this.zzbte = zzceh;
        this.zzbth = str;
        this.zzbti = str2;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.zzbtf.zzboe.zzze();
        return this.zzbtf.zzboe.zzwz().zzh(this.zzbte.packageName, this.zzbth, this.zzbti);
    }
}
