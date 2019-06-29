package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

final class zzbcv extends zzbdl {
    private WeakReference<zzbcp> zzaDR;

    zzbcv(zzbcp zzbcp) {
        this.zzaDR = new WeakReference(zzbcp);
    }

    public final void zzpA() {
        zzbcp zzbcp = (zzbcp) this.zzaDR.get();
        if (zzbcp != null) {
            zzbcp.resume();
        }
    }
}
