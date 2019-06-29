package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

public final class zzaxl {
    private final String zzaxq;
    private final int zzaxr;
    private final String zzaxs;

    private zzaxl(String str, int i, String str2) {
        this.zzaxq = str;
        this.zzaxr = i;
        this.zzaxs = str2;
    }

    public zzaxl(JSONObject jSONObject) throws JSONException {
        this(jSONObject.optString("applicationName"), jSONObject.optInt("maxPlayers"), jSONObject.optString("version"));
    }

    public final int getMaxPlayers() {
        return this.zzaxr;
    }

    public final String getVersion() {
        return this.zzaxs;
    }

    public final String zzox() {
        return this.zzaxq;
    }
}
