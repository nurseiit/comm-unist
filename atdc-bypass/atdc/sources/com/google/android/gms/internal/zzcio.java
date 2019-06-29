package com.google.android.gms.internal;

final class zzcio implements Runnable {
    private /* synthetic */ zzcji zzbtk;
    private /* synthetic */ zzcid zzbua;
    private /* synthetic */ boolean zzbue;

    zzcio(zzcid zzcid, boolean z, zzcji zzcji) {
        this.zzbua = zzcid;
        this.zzbue = z;
        this.zzbtk = zzcji;
    }

    public final void run() {
        zzcfd zzd = this.zzbua.zzbtU;
        if (zzd == null) {
            this.zzbua.zzwF().zzyx().log("Discarding data. Failed to set user attribute");
            return;
        }
        this.zzbua.zza(zzd, this.zzbue ? null : this.zzbtk);
        this.zzbua.zzkP();
    }
}
