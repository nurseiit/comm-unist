package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerClient.GameManagerResult;
import com.google.android.gms.common.api.Status;
import org.json.JSONObject;

final class zzaxk implements GameManagerResult {
    private final Status mStatus;
    private final String zzaxn;
    private final long zzaxo;
    private final JSONObject zzaxp;

    zzaxk(Status status, String str, long j, JSONObject jSONObject) {
        this.mStatus = status;
        this.zzaxn = str;
        this.zzaxo = j;
        this.zzaxp = jSONObject;
    }

    public final JSONObject getExtraMessageData() {
        return this.zzaxp;
    }

    public final String getPlayerId() {
        return this.zzaxn;
    }

    public final long getRequestId() {
        return this.zzaxo;
    }

    public final Status getStatus() {
        return this.mStatus;
    }
}
