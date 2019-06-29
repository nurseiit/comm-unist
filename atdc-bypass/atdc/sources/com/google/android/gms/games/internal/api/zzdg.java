package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;

final class zzdg implements CancelMatchResult {
    private /* synthetic */ Status zzakB;
    private /* synthetic */ zzdf zzbbD;

    zzdg(zzdf zzdf, Status status) {
        this.zzbbD = zzdf;
        this.zzakB = status;
    }

    public final String getMatchId() {
        return this.zzbbD.zzIi;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
