package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult;

final class zzdq implements UpdateMatchResult {
    private /* synthetic */ Status zzakB;

    zzdq(zzdp zzdp, Status status) {
        this.zzakB = status;
    }

    public final TurnBasedMatch getMatch() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
