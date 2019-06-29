package com.google.android.gms.internal;

final class zzayc implements Runnable {
    private /* synthetic */ zzaxx zzayi;
    private /* synthetic */ zzaxq zzayl;

    zzayc(zzaxz zzaxz, zzaxx zzaxx, zzaxq zzaxq) {
        this.zzayi = zzaxx;
        this.zzayl = zzaxq;
    }

    public final void run() {
        this.zzayi.zza(this.zzayl);
    }
}
