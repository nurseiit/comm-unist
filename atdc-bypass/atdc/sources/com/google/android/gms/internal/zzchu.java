package com.google.android.gms.internal;

final class zzchu implements Runnable {
    private /* synthetic */ String val$name;
    private /* synthetic */ Object zzbtD;
    private /* synthetic */ String zzbth;
    private /* synthetic */ zzchl zzbtt;
    private /* synthetic */ long zzbty;

    zzchu(zzchl zzchl, String str, String str2, Object obj, long j) {
        this.zzbtt = zzchl;
        this.zzbth = str;
        this.val$name = str2;
        this.zzbtD = obj;
        this.zzbty = j;
    }

    public final void run() {
        this.zzbtt.zza(this.zzbth, this.val$name, this.zzbtD, this.zzbty);
    }
}
