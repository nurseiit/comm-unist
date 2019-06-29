package com.google.android.gms.internal;

final class cs implements Runnable {
    private /* synthetic */ String zzbKM;
    private /* synthetic */ co zzbKO;
    private /* synthetic */ byte[] zzbKQ;

    cs(co coVar, String str, byte[] bArr) {
        this.zzbKO = coVar;
        this.zzbKM = str;
        this.zzbKQ = bArr;
    }

    public final void run() {
        this.zzbKO.zze(this.zzbKM, this.zzbKQ);
    }
}
