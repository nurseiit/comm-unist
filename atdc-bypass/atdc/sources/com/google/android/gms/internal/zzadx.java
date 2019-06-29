package com.google.android.gms.internal;

final class zzadx implements Runnable {
    private /* synthetic */ zzadw zzWT;
    private /* synthetic */ zzaff zztx;

    zzadx(zzadw zzadw, zzaff zzaff) {
        this.zzWT = zzadw;
        this.zztx = zzaff;
    }

    public final void run() {
        this.zzWT.zzWS.zzb(this.zztx);
    }
}
