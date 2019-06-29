package com.google.android.gms.tagmanager;

import java.util.List;

final class zzau implements Runnable {
    private /* synthetic */ List zzbEr;
    private /* synthetic */ long zzbEs;
    private /* synthetic */ zzat zzbEt;

    zzau(zzat zzat, List list, long j) {
        this.zzbEt = zzat;
        this.zzbEr = list;
        this.zzbEs = j;
    }

    public final void run() {
        this.zzbEt.zzb(this.zzbEr, this.zzbEs);
    }
}
