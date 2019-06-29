package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zzair {
    private Object mLock = new Object();
    private long zzaau;
    private long zzaav = Long.MIN_VALUE;

    public zzair(long j) {
        this.zzaau = j;
    }

    public final boolean tryAcquire() {
        synchronized (this.mLock) {
            long elapsedRealtime = zzbs.zzbF().elapsedRealtime();
            if (this.zzaav + this.zzaau > elapsedRealtime) {
                return false;
            }
            this.zzaav = elapsedRealtime;
            return true;
        }
    }
}
