package com.google.android.gms.internal;

import android.support.annotation.WorkerThread;

final class zzcug implements Runnable {
    private /* synthetic */ zzcuf zzbHS;

    zzcug(zzcuf zzcuf) {
        this.zzbHS = zzcuf;
    }

    @WorkerThread
    public final void run() {
        if (this.zzbHS.mState == 2) {
            this.zzbHS.zzbHP.dispatch();
        }
    }
}
