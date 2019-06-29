package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzakf;
import com.google.android.gms.internal.zzns;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class zzat implements zzakf {
    private /* synthetic */ zzaka zzuA;
    private /* synthetic */ zzns zzuB;
    private /* synthetic */ String zzuz;

    zzat(zzns zzns, String str, zzaka zzaka) {
        this.zzuB = zzns;
        this.zzuz = str;
        this.zzuA = zzaka;
    }

    public final void zza(zzaka zzaka, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("headline", this.zzuB.getHeadline());
            jSONObject.put("body", this.zzuB.getBody());
            jSONObject.put("call_to_action", this.zzuB.getCallToAction());
            jSONObject.put("advertiser", this.zzuB.getAdvertiser());
            jSONObject.put("logo", zzar.zza(this.zzuB.zzem()));
            JSONArray jSONArray = new JSONArray();
            List<Object> images = this.zzuB.getImages();
            if (images != null) {
                for (Object zze : images) {
                    jSONArray.put(zzar.zza(zzar.zzd(zze)));
                }
            }
            jSONObject.put("images", jSONArray);
            jSONObject.put("extras", zzar.zza(this.zzuB.getExtras(), this.zzuz));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("assets", jSONObject);
            jSONObject2.put("template_id", "1");
            this.zzuA.zza("google.afma.nativeExpressAds.loadAssets", jSONObject2);
        } catch (JSONException e) {
            zzajc.zzc("Exception occurred when loading assets", e);
        }
    }
}
