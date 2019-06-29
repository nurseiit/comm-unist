package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;

final class zzaoo {
    private long mStartTime;
    private final zze zzvw;

    public zzaoo(zze zze) {
        zzbo.zzu(zze);
        this.zzvw = zze;
    }

    public zzaoo(zze zze, long j) {
        zzbo.zzu(zze);
        this.zzvw = zze;
        this.mStartTime = j;
    }

    public final void clear() {
        this.mStartTime = 0;
    }

    public final void start() {
        this.mStartTime = this.zzvw.elapsedRealtime();
    }

    public final boolean zzu(long j) {
        return this.mStartTime == 0 || this.zzvw.elapsedRealtime() - this.mStartTime > j;
    }
}
