package com.google.android.gms.internal;

final class pr implements Runnable {
    private /* synthetic */ Runnable zzatg;
    private /* synthetic */ pq zzcct;

    pr(pq pqVar, Runnable runnable) {
        this.zzcct = pqVar;
        this.zzatg = runnable;
    }

    public final void run() {
        this.zzcct.zzccq = null;
        this.zzatg.run();
    }
}
