package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zzai;
import org.json.JSONObject;

final class zzfx implements zzajs<zzai> {
    private /* synthetic */ JSONObject zzxx;

    zzfx(zzfu zzfu, JSONObject jSONObject) {
        this.zzxx = jSONObject;
    }

    public final /* synthetic */ void zzc(Object obj) {
        ((zzai) obj).zza("AFMA_updateActiveView", this.zzxx);
    }
}
