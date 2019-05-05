package com.google.android.gms.internal;

final class zzacu implements Runnable {
    private /* synthetic */ zzacs zzWv;
    private /* synthetic */ zzafg zzsW;

    zzacu(zzacs zzacs, zzafg zzafg) {
        this.zzWv = zzacs;
        this.zzsW = zzafg;
    }

    public final void run() {
        this.zzWv.zzb(new zzaff(this.zzsW, null, null, null, null, null, null, null));
    }
}
