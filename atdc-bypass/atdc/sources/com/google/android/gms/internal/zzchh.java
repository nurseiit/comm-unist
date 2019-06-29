package com.google.android.gms.internal;

import com.google.android.gms.measurement.AppMeasurement.zzb;

final class zzchh implements Runnable {
    private /* synthetic */ String zzbjh;
    private /* synthetic */ zzcgq zzbtf;
    private /* synthetic */ String zzbtl;
    private /* synthetic */ String zzbtm;
    private /* synthetic */ long zzbtn;

    zzchh(zzcgq zzcgq, String str, String str2, String str3, long j) {
        this.zzbtf = zzcgq;
        this.zzbtl = str;
        this.zzbjh = str2;
        this.zzbtm = str3;
        this.zzbtn = j;
    }

    public final void run() {
        if (this.zzbtl == null) {
            this.zzbtf.zzboe.zzwx().zza(this.zzbjh, null);
            return;
        }
        zzb zzb = new zzb();
        zzb.zzboj = this.zzbtm;
        zzb.zzbok = this.zzbtl;
        zzb.zzbol = this.zzbtn;
        this.zzbtf.zzboe.zzwx().zza(this.zzbjh, zzb);
    }
}
