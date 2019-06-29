package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;

final class zzao implements LeaderboardMetadataResult {
    private /* synthetic */ Status zzakB;

    zzao(zzan zzan, Status status) {
        this.zzakB = status;
    }

    public final LeaderboardBuffer getLeaderboards() {
        return new LeaderboardBuffer(DataHolder.zzau(14));
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final void release() {
    }
}
