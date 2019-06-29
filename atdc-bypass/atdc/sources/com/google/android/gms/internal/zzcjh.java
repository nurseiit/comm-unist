package com.google.android.gms.internal;

final class zzcjh extends zzcer {
    private /* synthetic */ zzcjg zzbux;

    zzcjh(zzcjg zzcjg, zzcgl zzcgl) {
        this.zzbux = zzcjg;
        super(zzcgl);
    }

    public final void run() {
        this.zzbux.zzwF().zzyD().log("Sending upload intent from DelayedRunnable");
        this.zzbux.zzzr();
    }
}
