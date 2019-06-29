package com.google.android.gms.ads.internal.js;

import org.json.JSONObject;

final class zzf implements Runnable {
    private /* synthetic */ String zzKU;
    private /* synthetic */ JSONObject zzKV;
    private /* synthetic */ zze zzKW;

    zzf(zze zze, String str, JSONObject jSONObject) {
        this.zzKW = zze;
        this.zzKU = str;
        this.zzKV = jSONObject;
    }

    public final void run() {
        this.zzKW.zzJH.zza(this.zzKU, this.zzKV);
    }
}
