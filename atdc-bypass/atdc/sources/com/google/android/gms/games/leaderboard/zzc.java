package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;

public final class zzc extends com.google.android.gms.common.data.zzc implements LeaderboardVariant {
    zzc(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    public final boolean equals(Object obj) {
        return zzb.zza(this, obj);
    }

    public final /* synthetic */ Object freeze() {
        return new zzb(this);
    }

    public final int getCollection() {
        return getInteger("collection");
    }

    public final String getDisplayPlayerRank() {
        return getString("player_display_rank");
    }

    public final String getDisplayPlayerScore() {
        return getString("player_display_score");
    }

    public final long getNumScores() {
        return zzcx("total_scores") ? -1 : getLong("total_scores");
    }

    public final long getPlayerRank() {
        return zzcx("player_rank") ? -1 : getLong("player_rank");
    }

    public final String getPlayerScoreTag() {
        return getString("player_score_tag");
    }

    public final long getRawPlayerScore() {
        return zzcx("player_raw_score") ? -1 : getLong("player_raw_score");
    }

    public final int getTimeSpan() {
        return getInteger("timespan");
    }

    public final boolean hasPlayerInfo() {
        return !zzcx("player_raw_score");
    }

    public final int hashCode() {
        return zzb.zza(this);
    }

    public final String toString() {
        return zzb.zzb(this);
    }

    public final String zzvo() {
        return getString("top_page_token_next");
    }

    public final String zzvp() {
        return getString("window_page_token_prev");
    }

    public final String zzvq() {
        return getString("window_page_token_next");
    }
}
