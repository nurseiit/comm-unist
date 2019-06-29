package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult;

final class zzas implements LoadScoresResult {
    private /* synthetic */ Status zzakB;

    zzas(zzar zzar, Status status) {
        this.zzakB = status;
    }

    public final Leaderboard getLeaderboard() {
        return null;
    }

    public final LeaderboardScoreBuffer getScores() {
        return new LeaderboardScoreBuffer(DataHolder.zzau(14));
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final void release() {
    }
}
