package com.google.android.gms.internal;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

final class zzoi implements zzakf {
    private /* synthetic */ Map zzIl;
    private /* synthetic */ zzoh zzIm;

    zzoi(zzoh zzoh, Map map) {
        this.zzIm = zzoh;
        this.zzIl = map;
    }

    public final void zza(zzaka zzaka, boolean z) {
        this.zzIm.zzIk.zzIi = (String) this.zzIl.get("id");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("messageType", "htmlLoaded");
            jSONObject.put("id", this.zzIm.zzIk.zzIi);
            this.zzIm.zzIj.zzb("sendMessageToNativeJs", jSONObject);
        } catch (JSONException e) {
            zzajc.zzb("Unable to dispatch sendMessageToNativeJs event", e);
        }
    }
}
