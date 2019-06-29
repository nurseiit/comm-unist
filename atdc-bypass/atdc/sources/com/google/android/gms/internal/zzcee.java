package com.google.android.gms.internal;

final class zzcee implements Runnable {
    private /* synthetic */ long zzbot;
    private /* synthetic */ zzcec zzbou;
    private /* synthetic */ String zztD;

    zzcee(zzcec zzcec, String str, long j) {
        this.zzbou = zzcec;
        this.zztD = str;
        this.zzbot = j;
    }

    public final void run() {
        this.zzbou.zze(this.zztD, this.zzbot);
    }
}
