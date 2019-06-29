package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class LeaderboardScoreBuffer extends AbstractDataBuffer<LeaderboardScore> {
    private final zza zzbcQ;

    public LeaderboardScoreBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.zzbcQ = new zza(dataHolder.zzqN());
    }

    public final LeaderboardScore get(int i) {
        return new LeaderboardScoreRef(this.zzaCX, i);
    }

    public final zza zzvn() {
        return this.zzbcQ;
    }
}
