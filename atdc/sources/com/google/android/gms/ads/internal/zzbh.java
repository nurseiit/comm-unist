package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzyh;

final class zzbh implements Runnable {
    private /* synthetic */ zzbb zzuQ;

    zzbh(zzbb zzbb) {
        this.zzuQ = zzbb;
    }

    public final void run() {
        synchronized (this.zzuQ.mLock) {
            zzyh zzbi = this.zzuQ.zzbi();
            if (zzbi != null) {
                zzbi.zzfd();
            }
        }
    }
}
