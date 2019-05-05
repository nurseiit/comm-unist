package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zzai;
import org.json.JSONObject;

final class zzoe extends zzym {
    private /* synthetic */ JSONObject zzIg;

    zzoe(zzoc zzoc, JSONObject jSONObject) {
        this.zzIg = jSONObject;
    }

    public final void zzd(zzai zzai) {
        zzai.zza("google.afma.nativeAds.handleImpressionPing", this.zzIg);
    }
}
