package com.google.android.gms.internal;

final class pm implements Runnable {
    private /* synthetic */ pl zzcbS;

    pm(pl plVar) {
        this.zzcbS = plVar;
    }

    public final void run() {
        this.zzcbS.zzcbQ.zzcbO.cancel(false);
        this.zzcbS.zzcbQ.zzcbI = true;
        if (this.zzcbS.zzcbQ.zzbZE.zzIH()) {
            this.zzcbS.zzcbQ.zzbZE.zzb("websocket opened", null, new Object[0]);
        }
        this.zzcbS.zzcbQ.zzGv();
    }
}
