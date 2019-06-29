package com.google.android.gms.internal;

final class zzdd implements Runnable {
    private /* synthetic */ zzdb zzqW;
    private /* synthetic */ int zzqX;
    private /* synthetic */ boolean zzqY;

    zzdd(zzdb zzdb, int i, boolean z) {
        this.zzqW = zzdb;
        this.zzqX = i;
        this.zzqY = z;
    }

    public final void run() {
        zzax zzb = this.zzqW.zzb(this.zzqX, this.zzqY);
        this.zzqW.zzqL = zzb;
        if (zzdb.zza(this.zzqX, zzb)) {
            this.zzqW.zza(this.zzqX + 1, this.zzqY);
        }
    }
}
