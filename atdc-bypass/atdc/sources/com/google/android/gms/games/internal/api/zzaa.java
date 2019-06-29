package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;

final class zzaa implements LoadGamesResult {
    private /* synthetic */ Status zzakB;

    zzaa(zzz zzz, Status status) {
        this.zzakB = status;
    }

    public final GameBuffer getGames() {
        return new GameBuffer(DataHolder.zzau(14));
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final void release() {
    }
}
