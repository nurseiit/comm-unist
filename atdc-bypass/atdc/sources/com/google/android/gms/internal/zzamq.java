package com.google.android.gms.internal;

final class zzamq implements Runnable {
    private /* synthetic */ zzany zzagn;
    private /* synthetic */ zzamp zzago;

    zzamq(zzamp zzamp, zzany zzany) {
        this.zzago = zzamp;
        this.zzagn = zzany;
    }

    public final void run() {
        if (!this.zzago.zzagk.isConnected()) {
            this.zzago.zzagk.zzbp("Connected to service after a timeout");
            this.zzago.zzagk.zza(this.zzagn);
        }
    }
}
