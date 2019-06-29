package com.google.android.gms.internal;

abstract class zzchj extends zzchi {
    private boolean zzafK;

    zzchj(zzcgl zzcgl) {
        super(zzcgl);
        this.zzboe.zzb(this);
    }

    public final void initialize() {
        if (this.zzafK) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzjD();
        this.zzboe.zzzd();
        this.zzafK = true;
    }

    /* Access modifiers changed, original: final */
    public final boolean isInitialized() {
        return this.zzafK;
    }

    public abstract void zzjD();

    /* Access modifiers changed, original: protected|final */
    public final void zzkD() {
        if (!isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }
}
