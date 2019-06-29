package com.google.android.gms.internal;

final class zzcje implements Runnable {
    private /* synthetic */ long zzbot;
    private /* synthetic */ zzcja zzbuu;

    zzcje(zzcja zzcja, long j) {
        this.zzbuu = zzcja;
        this.zzbot = j;
    }

    public final void run() {
        this.zzbuu.zzaf(this.zzbot);
    }
}
