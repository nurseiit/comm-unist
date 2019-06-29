package com.google.android.gms.internal;

final class zzcit implements Runnable {
    private /* synthetic */ zzciq zzbuk;
    private /* synthetic */ zzcfd zzbul;

    zzcit(zzciq zzciq, zzcfd zzcfd) {
        this.zzbuk = zzciq;
        this.zzbul = zzcfd;
    }

    public final void run() {
        synchronized (this.zzbuk) {
            this.zzbuk.zzbuh = false;
            if (!this.zzbuk.zzbua.isConnected()) {
                this.zzbuk.zzbua.zzwF().zzyC().log("Connected to remote service");
                this.zzbuk.zzbua.zza(this.zzbul);
            }
        }
    }
}
