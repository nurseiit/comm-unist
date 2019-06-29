package com.google.android.gms.internal;

final class cq implements Runnable {
    private /* synthetic */ String zzbKM;
    private /* synthetic */ cc zzbKN;
    private /* synthetic */ co zzbKO;

    cq(co coVar, String str, cc ccVar) {
        this.zzbKO = coVar;
        this.zzbKM = str;
        this.zzbKN = ccVar;
    }

    public final void run() {
        this.zzbKO.zzb(this.zzbKM, this.zzbKN);
    }
}
