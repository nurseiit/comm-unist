package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult;

final class zzaq implements LoadPlayerScoreResult {
    private /* synthetic */ Status zzakB;

    zzaq(zzap zzap, Status status) {
        this.zzakB = status;
    }

    public final LeaderboardScore getScore() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
