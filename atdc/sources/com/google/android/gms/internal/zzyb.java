package com.google.android.gms.internal;

final class zzyb implements Runnable {
    private /* synthetic */ zzaff zzQX;
    private /* synthetic */ zzya zzQY;

    zzyb(zzya zzya, zzaff zzaff) {
        this.zzQY = zzya;
        this.zzQX = zzaff;
    }

    public final void run() {
        this.zzQY.zzQP.zzb(this.zzQX);
    }
}
