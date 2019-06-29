package com.google.android.gms.internal;

final class zzxv implements Runnable {
    private /* synthetic */ zzxt zzQW;
    private /* synthetic */ zzaff zztx;

    zzxv(zzxt zzxt, zzaff zzaff) {
        this.zzQW = zzxt;
        this.zztx = zzaff;
    }

    public final void run() {
        synchronized (this.zzQW.mLock) {
            zzxt zzxt = this.zzQW;
            zzxt.zzQP.zzb(this.zztx);
        }
    }
}
