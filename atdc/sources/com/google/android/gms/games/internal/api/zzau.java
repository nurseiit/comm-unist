package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;

final class zzau implements SubmitScoreResult {
    private /* synthetic */ Status zzakB;

    zzau(zzat zzat, Status status) {
        this.zzakB = status;
    }

    public final ScoreSubmissionData getScoreData() {
        return new ScoreSubmissionData(DataHolder.zzau(14));
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final void release() {
    }
}
