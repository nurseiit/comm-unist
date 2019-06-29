package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult;

final class zzdm implements LoadMatchResult {
    private /* synthetic */ Status zzakB;

    zzdm(zzdl zzdl, Status status) {
        this.zzakB = status;
    }

    public final TurnBasedMatch getMatch() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
