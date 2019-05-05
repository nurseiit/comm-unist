package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzwq {
    private final boolean zzNR;
    private final boolean zzNS;
    private final boolean zzNT;
    private final boolean zzNU;
    private final boolean zzNV;

    private zzwq(zzws zzws) {
        this.zzNR = zzws.zzNR;
        this.zzNS = zzws.zzNS;
        this.zzNT = zzws.zzNT;
        this.zzNU = zzws.zzNU;
        this.zzNV = zzws.zzNV;
    }

    public final JSONObject toJson() {
        try {
            return new JSONObject().put("sms", this.zzNR).put("tel", this.zzNS).put("calendar", this.zzNT).put("storePicture", this.zzNU).put("inlineVideo", this.zzNV);
        } catch (JSONException e) {
            zzajc.zzb("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
