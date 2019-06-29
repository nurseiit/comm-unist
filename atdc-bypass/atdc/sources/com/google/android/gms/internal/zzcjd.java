package com.google.android.gms.internal;

final class zzcjd implements Runnable {
    private /* synthetic */ long zzbot;
    private /* synthetic */ zzcja zzbuu;

    zzcjd(zzcja zzcja, long j) {
        this.zzbuu = zzcja;
        this.zzbot = j;
    }

    public final void run() {
        this.zzbuu.zzae(this.zzbot);
    }
}
