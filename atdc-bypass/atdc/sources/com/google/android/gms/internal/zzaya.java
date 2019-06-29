package com.google.android.gms.internal;

final class zzaya implements Runnable {
    private /* synthetic */ zzaxx zzayi;
    private /* synthetic */ int zzayj;

    zzaya(zzaxz zzaxz, zzaxx zzaxx, int i) {
        this.zzayi = zzaxx;
        this.zzayj = i;
    }

    public final void run() {
        this.zzayi.zzaoY.onApplicationDisconnected(this.zzayj);
    }
}
