package com.google.android.gms.ads.internal.js;

import com.bumptech.glide.load.Key;

final class zzh implements Runnable {
    private /* synthetic */ zze zzKW;
    private /* synthetic */ String zzKY;

    zzh(zze zze, String str) {
        this.zzKW = zze;
        this.zzKY = str;
    }

    public final void run() {
        this.zzKW.zzJH.loadData(this.zzKY, "text/html", Key.STRING_CHARSET_NAME);
    }
}
