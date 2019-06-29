package com.google.android.gms.internal;

final class zzyg implements Runnable {
    private /* synthetic */ zzyf zzRi;
    private /* synthetic */ zzaff zztx;

    zzyg(zzyf zzyf, zzaff zzaff) {
        this.zzRi = zzyf;
        this.zztx = zzaff;
    }

    public final void run() {
        this.zzRi.zzQP.zzb(this.zztx);
    }
}
