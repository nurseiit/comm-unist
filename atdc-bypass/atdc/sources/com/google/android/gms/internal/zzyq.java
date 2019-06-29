package com.google.android.gms.internal;

final class zzyq implements Runnable {
    private /* synthetic */ zzyn zzRF;
    private /* synthetic */ zzajg zzRH;
    private /* synthetic */ String zzRI;

    zzyq(zzyn zzyn, zzajg zzajg, String str) {
        this.zzRF = zzyn;
        this.zzRH = zzajg;
        this.zzRI = str;
    }

    public final void run() {
        this.zzRH.zzg((zzpw) this.zzRF.zzRw.zzbl().get(this.zzRI));
    }
}
