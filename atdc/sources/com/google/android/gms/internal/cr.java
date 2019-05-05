package com.google.android.gms.internal;

final class cr implements Runnable {
    private /* synthetic */ String zzbKM;
    private /* synthetic */ cc zzbKN;
    private /* synthetic */ co zzbKO;
    private /* synthetic */ String zzbKP;

    cr(co coVar, String str, String str2, cc ccVar) {
        this.zzbKO = coVar;
        this.zzbKM = str;
        this.zzbKP = str2;
        this.zzbKN = ccVar;
    }

    public final void run() {
        this.zzbKO.zzb(this.zzbKM, this.zzbKP, this.zzbKN);
    }
}
