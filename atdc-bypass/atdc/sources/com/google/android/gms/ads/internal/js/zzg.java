package com.google.android.gms.ads.internal.js;

final class zzg implements Runnable {
    private /* synthetic */ String zzKU;
    private /* synthetic */ zze zzKW;
    private /* synthetic */ String zzKX;

    zzg(zze zze, String str, String str2) {
        this.zzKW = zze;
        this.zzKU = str;
        this.zzKX = str2;
    }

    public final void run() {
        this.zzKW.zzJH.zzi(this.zzKU, this.zzKX);
    }
}
