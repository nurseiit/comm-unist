package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;

final class cg<T> {
    private T mData;
    private Status mStatus;
    private long zzbKC;

    public cg(Status status, T t, long j) {
        this.mStatus = status;
        this.mData = t;
        this.zzbKC = j;
    }

    public final long zzCO() {
        return this.zzbKC;
    }

    public final void zzJ(Status status) {
        this.mStatus = status;
    }

    public final void zzP(T t) {
        this.mData = t;
    }

    public final void zzak(long j) {
        this.zzbKC = j;
    }
}
