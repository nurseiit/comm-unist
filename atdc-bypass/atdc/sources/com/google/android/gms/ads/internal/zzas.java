package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzakf;
import com.google.android.gms.internal.zznq;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class zzas implements zzakf {
    private /* synthetic */ zzaka zzuA;
    private /* synthetic */ zznq zzuy;
    private /* synthetic */ String zzuz;

    zzas(zznq zznq, String str, zzaka zzaka) {
        this.zzuy = zznq;
        this.zzuz = str;
        this.zzuA = zzaka;
    }

    public final void zza(zzaka zzaka, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("headline", this.zzuy.getHeadline());
            jSONObject.put("body", this.zzuy.getBody());
            jSONObject.put("call_to_action", this.zzuy.getCallToAction());
            jSONObject.put(Param.PRICE, this.zzuy.getPrice());
            jSONObject.put("star_rating", String.valueOf(this.zzuy.getStarRating()));
            jSONObject.put("store", this.zzuy.getStore());
            jSONObject.put("icon", zzar.zza(this.zzuy.zzeh()));
            JSONArray jSONArray = new JSONArray();
            List<Object> images = this.zzuy.getImages();
            if (images != null) {
                for (Object zze : images) {
                    jSONArray.put(zzar.zza(zzar.zzd(zze)));
                }
            }
            jSONObject.put("images", jSONArray);
            jSONObject.put("extras", zzar.zza(this.zzuy.getExtras(), this.zzuz));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("assets", jSONObject);
            jSONObject2.put("template_id", "2");
            this.zzuA.zza("google.afma.nativeExpressAds.loadAssets", jSONObject2);
        } catch (JSONException e) {
            zzajc.zzc("Exception occurred when loading assets", e);
        }
    }
}
