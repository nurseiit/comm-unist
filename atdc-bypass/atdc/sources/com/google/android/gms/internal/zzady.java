package com.google.android.gms.internal;

final class zzady implements Runnable {
    private /* synthetic */ zzadw zzWT;
    private /* synthetic */ zzaff zztx;

    zzady(zzadw zzadw, zzaff zzaff) {
        this.zzWT = zzadw;
        this.zztx = zzaff;
    }

    public final void run() {
        this.zzWT.zzWS.zzb(this.zztx);
    }
}
