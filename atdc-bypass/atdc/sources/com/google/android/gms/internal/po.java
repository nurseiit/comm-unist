package com.google.android.gms.internal;

final class po implements Runnable {
    private /* synthetic */ pl zzcbS;

    po(pl plVar) {
        this.zzcbS = plVar;
    }

    public final void run() {
        if (this.zzcbS.zzcbQ.zzbZE.zzIH()) {
            this.zzcbS.zzcbQ.zzbZE.zzb("closed", null, new Object[0]);
        }
        this.zzcbS.zzcbQ.zzGw();
    }
}
