package com.google.android.gms.games.internal.api;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult;

final class zzdo implements LoadMatchesResult {
    private /* synthetic */ Status zzakB;

    zzdo(zzdn zzdn, Status status) {
        this.zzakB = status;
    }

    public final LoadMatchesResponse getMatches() {
        return new LoadMatchesResponse(new Bundle());
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final void release() {
    }
}
