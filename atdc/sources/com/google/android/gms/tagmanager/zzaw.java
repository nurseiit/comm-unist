package com.google.android.gms.tagmanager;

final class zzaw implements Runnable {
    private /* synthetic */ zzat zzbEt;
    private /* synthetic */ String zzbEv;

    zzaw(zzat zzat, String str) {
        this.zzbEt = zzat;
        this.zzbEv = str;
    }

    public final void run() {
        this.zzbEt.zzff(this.zzbEv);
    }
}
