package com.google.android.gms.internal;

import com.google.android.gms.cast.games.PlayerInfo;
import com.google.android.gms.common.util.zzo;
import java.util.Arrays;
import org.json.JSONObject;

public final class zzaxo implements PlayerInfo {
    private final int zzaqz;
    private final JSONObject zzaxD;
    private final boolean zzaxE;
    private final String zzaxn;

    public zzaxo(String str, int i, JSONObject jSONObject, boolean z) {
        this.zzaxn = str;
        this.zzaqz = i;
        this.zzaxD = jSONObject;
        this.zzaxE = z;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof PlayerInfo)) {
            return false;
        }
        PlayerInfo playerInfo = (PlayerInfo) obj;
        if (this.zzaxE == playerInfo.isControllable() && this.zzaqz == playerInfo.getPlayerState() && zzaye.zza(this.zzaxn, playerInfo.getPlayerId()) && zzo.zzc(this.zzaxD, playerInfo.getPlayerData())) {
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

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaxn, Integer.valueOf(this.zzaqz), this.zzaxD, Boolean.valueOf(this.zzaxE)});
    }

    public final boolean isConnected() {
        switch (this.zzaqz) {
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final boolean isControllable() {
        return this.zzaxE;
    }
}
