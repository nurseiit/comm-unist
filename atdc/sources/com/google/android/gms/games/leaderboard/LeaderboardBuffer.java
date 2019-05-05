package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzg;

public final class LeaderboardBuffer extends zzg<Leaderboard> {
    public LeaderboardBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzi(int i, int i2) {
        return new LeaderboardRef(this.zzaCX, i, i2);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzqS() {
        return "external_leaderboard_id";
    }
}
