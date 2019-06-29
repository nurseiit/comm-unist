package com.google.android.gms.tagmanager;

final class zzfq implements Runnable {
    private /* synthetic */ zzfo zzbGP;

    zzfq(zzfo zzfo) {
        this.zzbGP = zzfo;
    }

    public final void run() {
        this.zzbGP.zzbGE.dispatch();
    }
}
