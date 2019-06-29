package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zzai;
import org.json.JSONException;
import org.json.JSONObject;

final class zzyo extends zzym {
    final /* synthetic */ String zzRC;
    final /* synthetic */ zzyw zzRD;
    final /* synthetic */ zzajg zzRE;
    final /* synthetic */ zzyn zzRF;

    zzyo(zzyn zzyn, String str, zzyw zzyw, zzajg zzajg) {
        this.zzRF = zzyn;
        this.zzRC = str;
        this.zzRD = zzyw;
        this.zzRE = zzajg;
    }

    public final void zzd(zzai zzai) {
        zzrd zzyp = new zzyp(this, zzai);
        this.zzRD.zzRW = zzyp;
        zzai.zza("/nativeAdPreProcess", zzyp);
        try {
            JSONObject jSONObject = new JSONObject(this.zzRF.zzQQ.zzXY.body);
            jSONObject.put("ads_id", this.zzRC);
            zzai.zza("google.afma.nativeAds.preProcessJsonGmsg", jSONObject);
        } catch (JSONException e) {
            zzajc.zzc("Exception occurred while invoking javascript", e);
            this.zzRE.zzg(null);
        }
    }

    public final void zzgv() {
        this.zzRE.zzg(null);
    }
}
