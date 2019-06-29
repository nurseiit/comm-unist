package com.google.android.gms.internal;

import com.google.android.gms.games.Games;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzaxm {
    private static final zzayo zzapq = new zzayo("GameManagerMessage");
    protected final zzaxl zzawU;
    protected final String zzaxA;
    protected final String zzaxB;
    protected final String zzaxn;
    protected final long zzaxo;
    protected final JSONObject zzaxp;
    protected final int zzaxt;
    protected final int zzaxu;
    protected final String zzaxv;
    protected final int zzaxw;
    protected final int zzaxx;
    protected final List<zzaxp> zzaxy;
    protected final JSONObject zzaxz;

    private zzaxm(int i, int i2, String str, JSONObject jSONObject, int i3, int i4, List<zzaxp> list, JSONObject jSONObject2, String str2, String str3, long j, String str4, zzaxl zzaxl) {
        this.zzaxt = i;
        this.zzaxu = i2;
        this.zzaxv = str;
        this.zzaxp = jSONObject;
        this.zzaxw = i3;
        this.zzaxx = i4;
        this.zzaxy = list;
        this.zzaxz = jSONObject2;
        this.zzaxA = str2;
        this.zzaxn = str3;
        this.zzaxo = j;
        this.zzaxB = str4;
        this.zzawU = zzaxl;
    }

    private static List<zzaxp> zzb(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return arrayList;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                Object obj = null;
                try {
                    obj = new zzaxp(optJSONObject);
                } catch (JSONException e) {
                    zzapq.zzc(e, "Exception when attempting to parse PlayerInfoMessageComponent at index %d", Integer.valueOf(i));
                }
                if (obj != null) {
                    arrayList.add(obj);
                }
            }
        }
        return arrayList;
    }

    protected static zzaxm zzo(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        int optInt = jSONObject2.optInt("type", -1);
        switch (optInt) {
            case 1:
                JSONObject optJSONObject = jSONObject2.optJSONObject("gameManagerConfig");
                return new zzaxm(optInt, jSONObject2.optInt("statusCode"), jSONObject2.optString("errorDescription"), jSONObject2.optJSONObject("extraMessageData"), jSONObject2.optInt("gameplayState"), jSONObject2.optInt("lobbyState"), zzb(jSONObject2.optJSONArray(Games.EXTRA_PLAYER_IDS)), jSONObject2.optJSONObject("gameData"), jSONObject2.optString("gameStatusText"), jSONObject2.optString("playerId"), jSONObject2.optLong("requestId"), jSONObject2.optString("playerToken"), optJSONObject != null ? new zzaxl(optJSONObject) : null);
            case 2:
                return new zzaxm(optInt, jSONObject2.optInt("statusCode"), jSONObject2.optString("errorDescription"), jSONObject2.optJSONObject("extraMessageData"), jSONObject2.optInt("gameplayState"), jSONObject2.optInt("lobbyState"), zzb(jSONObject2.optJSONArray(Games.EXTRA_PLAYER_IDS)), jSONObject2.optJSONObject("gameData"), jSONObject2.optString("gameStatusText"), jSONObject2.optString("playerId"), -1, null, null);
            default:
                try {
                    zzapq.zzf("Unrecognized Game Message type %d", Integer.valueOf(optInt));
                    return null;
                } catch (JSONException e) {
                    zzapq.zzc(e, "Exception while parsing GameManagerMessage from json", new Object[0]);
                    return null;
                }
        }
    }
}
