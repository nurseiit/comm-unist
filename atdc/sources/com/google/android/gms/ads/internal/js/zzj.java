package com.google.android.gms.ads.internal.js;

final class zzj implements Runnable {
    private /* synthetic */ String zzKS;
    private /* synthetic */ zze zzKW;

    zzj(zze zze, String str) {
        this.zzKW = zze;
        this.zzKS = str;
    }

    public final void run() {
        this.zzKW.zzJH.loadUrl(this.zzKS);
    }
}
