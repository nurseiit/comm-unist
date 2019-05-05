package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.ee;

final class zzfa implements Runnable {
    private /* synthetic */ zzey zzbGc;
    private /* synthetic */ ee zzbGd;

    zzfa(zzey zzey, ee eeVar) {
        this.zzbGc = zzey;
        this.zzbGd = eeVar;
    }

    public final void run() {
        this.zzbGc.zzb(this.zzbGd);
    }
}
