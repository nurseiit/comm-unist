package com.google.android.gms.internal;

import java.util.concurrent.Future;

@zzzn
public abstract class zzafp implements zzahp<Future> {
    private volatile Thread zzYV;
    private boolean zzYW = false;
    private final Runnable zzv = new zzafq(this);

    public zzafp(boolean z) {
    }

    public final void cancel() {
        onStop();
        if (this.zzYV != null) {
            this.zzYV.interrupt();
        }
    }

    public abstract void onStop();

    public abstract void zzbd();

    public final /* synthetic */ Object zzgp() {
        return this.zzYW ? zzagt.zza(1, this.zzv) : zzagt.zza(this.zzv);
    }

    public final Future zzhL() {
        return this.zzYW ? zzagt.zza(1, this.zzv) : zzagt.zza(this.zzv);
    }
}
