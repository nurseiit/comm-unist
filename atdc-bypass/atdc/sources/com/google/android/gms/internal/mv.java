package com.google.android.gms.internal;

final class mv implements Runnable {
    private /* synthetic */ aae zzbWj;
    private /* synthetic */ mu zzbZx;

    mv(mu muVar, aae aae) {
        this.zzbZx = muVar;
        this.zzbWj = aae;
    }

    public final void run() {
        this.zzbZx.zzbZv.zzgO(this.zzbWj.getToken());
    }
}
