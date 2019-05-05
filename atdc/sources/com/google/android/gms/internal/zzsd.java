package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

final class zzsd implements Runnable {
    private /* synthetic */ String zzJR;
    private /* synthetic */ int zzJT;
    private /* synthetic */ zzsb zzJV;
    private /* synthetic */ String zzsD;

    zzsd(zzsb zzsb, String str, String str2, int i) {
        this.zzJV = zzsb;
        this.zzsD = str;
        this.zzJR = str2;
        this.zzJT = i;
    }

    public final void run() {
        Map hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.zzsD);
        hashMap.put("cachedSrc", this.zzJR);
        hashMap.put("totalBytes", Integer.toString(this.zzJT));
        this.zzJV.zza("onPrecacheEvent", hashMap);
    }
}
