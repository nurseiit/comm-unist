package com.google.android.gms.internal;

import android.support.annotation.WorkerThread;

final class zzcjb extends zzcer {
    private /* synthetic */ zzcja zzbuu;

    zzcjb(zzcja zzcja, zzcgl zzcgl) {
        this.zzbuu = zzcja;
        super(zzcgl);
    }

    @WorkerThread
    public final void run() {
        this.zzbuu.zzzo();
    }
}
