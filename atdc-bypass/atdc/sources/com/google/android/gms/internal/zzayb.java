package com.google.android.gms.internal;

final class zzayb implements Runnable {
    private /* synthetic */ zzaxx zzayi;
    private /* synthetic */ zzayf zzayk;

    zzayb(zzaxz zzaxz, zzaxx zzaxx, zzayf zzayf) {
        this.zzayi = zzaxx;
        this.zzayk = zzayf;
    }

    public final void run() {
        this.zzayi.zza(this.zzayk);
    }
}
