package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.Players.LoadPlayersResult;

final class zzbg implements LoadPlayersResult {
    private /* synthetic */ Status zzakB;

    zzbg(zzbf zzbf, Status status) {
        this.zzakB = status;
    }

    public final PlayerBuffer getPlayers() {
        return new PlayerBuffer(DataHolder.zzau(14));
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final void release() {
    }
}
