package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzafj {
    private String mAppId;
    private final long zzYk;
    private final List<String> zzYl = new ArrayList();
    private final List<String> zzYm = new ArrayList();
    private final Map<String, zzub> zzYn = new HashMap();
    private String zzYo;
    private boolean zzYp = false;

    public zzafj(String str, long j) {
        this.zzYo = str;
        this.zzYk = j;
        zzaE(str);
    }

    private final void zzaE(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                int i = 0;
                if (jSONObject.optInt("status", -1) != 1) {
                    this.zzYp = false;
                    zzajc.zzaT("App settings could not be fetched successfully.");
                    return;
                }
                this.zzYp = true;
                this.mAppId = jSONObject.optString("app_id");
                JSONArray optJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
                if (optJSONArray != null) {
                    while (i < optJSONArray.length()) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString("format");
                        String optString2 = jSONObject2.optString("ad_unit_id");
                        if (!TextUtils.isEmpty(optString)) {
                            if (!TextUtils.isEmpty(optString2)) {
                                if ("interstitial".equalsIgnoreCase(optString)) {
                                    this.zzYm.add(optString2);
                                } else if ("rewarded".equalsIgnoreCase(optString)) {
                                    jSONObject2 = jSONObject2.optJSONObject("mediation_config");
                                    if (jSONObject2 != null) {
                                        this.zzYn.put(optString2, new zzub(jSONObject2));
                                    }
                                }
                            }
                        }
                        i++;
                    }
                }
                zzg(jSONObject);
            } catch (JSONException e) {
                zzajc.zzc("Exception occurred while processing app setting json", e);
                zzbs.zzbD().zza(e, "AppSettings.parseAppSettingsJson");
            }
        }
    }

    private final void zzg(JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("persistable_banner_ad_unit_ids");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                this.zzYl.add(optJSONArray.optString(i));
            }
        }
    }

    public final long zzhi() {
        return this.zzYk;
    }

    public final boolean zzhj() {
        return this.zzYp;
    }

    public final String zzhk() {
        return this.zzYo;
    }

    public final String zzhl() {
        return this.mAppId;
    }

    public final Map<String, zzub> zzhm() {
        return this.zzYn;
    }
}
