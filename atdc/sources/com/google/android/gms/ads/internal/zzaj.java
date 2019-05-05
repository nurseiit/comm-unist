package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzir;

final class zzaj implements Runnable {
    private /* synthetic */ zzir zztY;
    private /* synthetic */ zzai zztZ;

    zzaj(zzai zzai, zzir zzir) {
        this.zztZ = zzai;
        this.zztY = zzir;
    }

    public final void run() {
        synchronized (this.zztZ.mLock) {
            if (this.zztZ.zzaW()) {
                this.zztZ.zzd(this.zztY);
            } else {
                this.zztZ.zze(this.zztY);
            }
        }
    }
}
