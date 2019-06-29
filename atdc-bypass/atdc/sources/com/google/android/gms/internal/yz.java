package com.google.android.gms.internal;

public final class yz implements ys {
    private final ys zzcjx;
    private long zzcjy = 0;

    public yz(ys ysVar, long j) {
        this.zzcjx = ysVar;
        this.zzcjy = 0;
    }

    public final long zzJF() {
        return this.zzcjx.zzJF() + this.zzcjy;
    }

    public final void zzay(long j) {
        this.zzcjy = j;
    }
}
