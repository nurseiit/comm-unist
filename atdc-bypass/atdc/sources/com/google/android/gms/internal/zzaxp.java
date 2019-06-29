package com.google.android.gms.internal;

import com.google.android.gms.common.util.zzo;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzaxp {
    private final int zzaqz;
    private final JSONObject zzaxD;
    private final String zzaxn;

    private zzaxp(String str, int i, JSONObject jSONObject) {
        this.zzaxn = str;
        this.zzaqz = i;
        this.zzaxD = jSONObject;
    }

    public zzaxp(JSONObject jSONObject) throws JSONException {
        this(jSONObject.optString("playerId"), jSONObject.optInt("playerState"), jSONObject.optJSONObject("playerData"));
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzaxp)) {
            return false;
        }
        zzaxp zzaxp = (zzaxp) obj;
        if (this.zzaqz == zzaxp.zzaqz && zzaye.zza(this.zzaxn, zzaxp.zzaxn) && zzo.zzc(this.zzaxD, zzaxp.zzaxD)) {
            return true;
        }
        return false;
    }

    public final JSONObject getPlayerData() {
        return this.zzaxD;
    }

    public final String getPlayerId() {
        return this.zzaxn;
    }

    public final int getPlayerState() {
        return this.zzaqz;
    }
}
