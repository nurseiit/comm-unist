package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;

final class zzcjf {
    private long mStartTime;
    private final zze zzvw;

    public zzcjf(zze zze) {
        zzbo.zzu(zze);
        this.zzvw = zze;
    }

    public final void clear() {
        this.mStartTime = 0;
    }

    public final void start() {
        this.mStartTime = this.zzvw.elapsedRealtime();
    }

    public final boolean zzu(long j) {
        return this.mStartTime == 0 || this.zzvw.elapsedRealtime() - this.mStartTime >= j;
    }
}
