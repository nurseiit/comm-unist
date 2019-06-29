package com.google.android.gms.internal;

import android.os.Handler;

final class my extends yu {
    private /* synthetic */ mx zzbZA;
    private /* synthetic */ wl zzbZz;

    my(mx mxVar, wl wlVar) {
        this.zzbZA = mxVar;
        this.zzbZz = wlVar;
    }

    public final void zzf(Throwable th) {
        String zzh = yu.zzh(th);
        this.zzbZz.zzd(zzh, th);
        new Handler(this.zzbZA.zzqE.getMainLooper()).post(new mz(this, zzh, th));
        zzFV().shutdownNow();
    }
}
