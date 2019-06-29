package com.google.android.gms.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.zzbo;

@zzzn
public final class zzaio {
    private Handler mHandler = null;
    private final Object mLock = new Object();
    private HandlerThread zzaap = null;
    private int zzaaq = 0;

    public final Handler getHandler() {
        return this.mHandler;
    }

    public final Looper zzie() {
        Looper looper;
        synchronized (this.mLock) {
            if (this.zzaaq != 0) {
                zzbo.zzb(this.zzaap, (Object) "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.zzaap == null) {
                zzafr.v("Starting the looper thread.");
                this.zzaap = new HandlerThread("LooperProvider");
                this.zzaap.start();
                this.mHandler = new Handler(this.zzaap.getLooper());
                zzafr.v("Looper thread started.");
            } else {
                zzafr.v("Resuming the looper thread");
                this.mLock.notifyAll();
            }
            this.zzaaq++;
            looper = this.zzaap.getLooper();
        }
        return looper;
    }
}
