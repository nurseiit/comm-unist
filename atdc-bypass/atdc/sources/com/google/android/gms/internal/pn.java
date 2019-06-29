package com.google.android.gms.internal;

final class pn implements Runnable {
    private /* synthetic */ pl zzcbS;
    private /* synthetic */ String zzcbT;

    pn(pl plVar, String str) {
        this.zzcbS = plVar;
        this.zzcbT = str;
    }

    public final void run() {
        this.zzcbS.zzcbQ.zzgL(this.zzcbT);
    }
}
