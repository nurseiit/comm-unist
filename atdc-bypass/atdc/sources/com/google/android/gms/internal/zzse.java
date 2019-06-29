package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

final class zzse implements Runnable {
    private /* synthetic */ String val$message;
    private /* synthetic */ String zzJR;
    private /* synthetic */ zzsb zzJV;
    private /* synthetic */ String zzJW;
    private /* synthetic */ String zzsD;

    zzse(zzsb zzsb, String str, String str2, String str3, String str4) {
        this.zzJV = zzsb;
        this.zzsD = str;
        this.zzJR = str2;
        this.zzJW = str3;
        this.val$message = str4;
    }

    public final void run() {
        Map hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.zzsD);
        if (!TextUtils.isEmpty(this.zzJR)) {
            hashMap.put("cachedSrc", this.zzJR);
        }
        hashMap.put("type", zzsb.zzV(this.zzJW));
        hashMap.put("reason", this.zzJW);
        if (!TextUtils.isEmpty(this.val$message)) {
            hashMap.put("message", this.val$message);
        }
        this.zzJV.zza("onPrecacheEvent", hashMap);
    }
}
