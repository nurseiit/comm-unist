package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig.Builder;

public final class zzb extends TurnBasedMatchConfig {
    private final Bundle zzbdL;
    private final String[] zzbdM;
    private final int zzbdU;
    private final int zzbdu;

    zzb(Builder builder) {
        this.zzbdu = builder.zzbdu;
        this.zzbdU = builder.zzbdU;
        this.zzbdL = builder.zzbdL;
        this.zzbdM = (String[]) builder.zzbdK.toArray(new String[builder.zzbdK.size()]);
    }

    public final Bundle getAutoMatchCriteria() {
        return this.zzbdL;
    }

    public final String[] getInvitedPlayerIds() {
        return this.zzbdM;
    }

    public final int getVariant() {
        return this.zzbdu;
    }

    public final int zzvs() {
        return this.zzbdU;
    }
}
