package com.google.android.gms.internal;

import java.util.concurrent.Callable;

final class zzchc implements Callable<byte[]> {
    private /* synthetic */ String zzbjh;
    private /* synthetic */ zzcgq zzbtf;
    private /* synthetic */ zzcez zzbtj;

    zzchc(zzcgq zzcgq, zzcez zzcez, String str) {
        this.zzbtf = zzcgq;
        this.zzbtj = zzcez;
        this.zzbjh = str;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.zzbtf.zzboe.zzze();
        return this.zzbtf.zzboe.zza(this.zzbtj, this.zzbjh);
    }
}
