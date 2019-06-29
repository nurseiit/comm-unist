package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

final class zzsc implements Runnable {
    private /* synthetic */ String zzJR;
    private /* synthetic */ int zzJS;
    private /* synthetic */ int zzJT;
    private /* synthetic */ boolean zzJU = false;
    private /* synthetic */ zzsb zzJV;
    private /* synthetic */ String zzsD;

    zzsc(zzsb zzsb, String str, String str2, int i, int i2, boolean z) {
        this.zzJV = zzsb;
        this.zzsD = str;
        this.zzJR = str2;
        this.zzJS = i;
        this.zzJT = i2;
    }

    public final void run() {
        Map hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.zzsD);
        hashMap.put("cachedSrc", this.zzJR);
        hashMap.put("bytesLoaded", Integer.toString(this.zzJS));
        hashMap.put("totalBytes", Integer.toString(this.zzJT));
        hashMap.put("cacheReady", this.zzJU ? "1" : "0");
        this.zzJV.zza("onPrecacheEvent", hashMap);
    }
}
