package com.google.android.gms.internal;

import java.io.EOFException;

final class pp implements Runnable {
    private /* synthetic */ pl zzcbS;
    private /* synthetic */ yj zzcbU;

    pp(pl plVar, yj yjVar) {
        this.zzcbS = plVar;
        this.zzcbU = yjVar;
    }

    public final void run() {
        wl zzb;
        String str;
        Throwable th;
        Object[] objArr;
        if (this.zzcbU.getCause() == null || !(this.zzcbU.getCause() instanceof EOFException)) {
            zzb = this.zzcbS.zzcbQ.zzbZE;
            str = "WebSocket error.";
            th = this.zzcbU;
            objArr = new Object[0];
        } else {
            zzb = this.zzcbS.zzcbQ.zzbZE;
            str = "WebSocket reached EOF.";
            objArr = new Object[0];
            th = null;
        }
        zzb.zzb(str, th, objArr);
        this.zzcbS.zzcbQ.zzGw();
    }
}
