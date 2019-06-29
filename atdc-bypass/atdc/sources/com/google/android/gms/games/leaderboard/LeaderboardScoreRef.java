package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;

public final class LeaderboardScoreRef extends zzc implements LeaderboardScore {
    private final PlayerRef zzbdd;

    LeaderboardScoreRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        this.zzbdd = new PlayerRef(dataHolder, i);
    }

    public final boolean equals(Object obj) {
        return LeaderboardScoreEntity.zza(this, obj);
    }

    public final /* synthetic */ Object freeze() {
        return new LeaderboardScoreEntity(this);
    }

    public final String getDisplayRank() {
        return getString("display_rank");
    }

    public final void getDisplayRank(CharArrayBuffer charArrayBuffer) {
        zza("display_rank", charArrayBuffer);
    }

    public final String getDisplayScore() {
        return getString("display_score");
    }

    public final void getDisplayScore(CharArrayBuffer charArrayBuffer) {
        zza("display_score", charArrayBuffer);
    }

    public final long getRank() {
        return getLong("rank");
    }

    public final long getRawScore() {
        return getLong("raw_score");
    }

    public final Player getScoreHolder() {
        return zzcx("external_player_id") ? null : this.zzbdd;
    }

    public final String getScoreHolderDisplayName() {
        return zzcx("external_player_id") ? getString("default_display_name") : this.zzbdd.getDisplayName();
    }

    public final void getScoreHolderDisplayName(CharArrayBuffer charArrayBuffer) {
        if (zzcx("external_player_id")) {
            zza("default_display_name", charArrayBuffer);
        } else {
            this.zzbdd.getDisplayName(charArrayBuffer);
        }
    }

    public final Uri getScoreHolderHiResImageUri() {
        return zzcx("external_player_id") ? null : this.zzbdd.getHiResImageUri();
    }

    public final String getScoreHolderHiResImageUrl() {
        return zzcx("external_player_id") ? null : this.zzbdd.getHiResImageUrl();
    }

    public final Uri getScoreHolderIconImageUri() {
        return zzcx("external_player_id") ? zzcw("default_display_image_uri") : this.zzbdd.getIconImageUri();
    }

    public final String getScoreHolderIconImageUrl() {
        return zzcx("external_player_id") ? getString("default_display_image_url") : this.zzbdd.getIconImageUrl();
    }

    public final String getScoreTag() {
        return getString("score_tag");
    }

    public final long getTimestampMillis() {
        return getLong("achieved_timestamp");
    }

    public final int hashCode() {
        return LeaderboardScoreEntity.zza(this);
    }

    public final String toString() {
        return LeaderboardScoreEntity.zzb(this);
    }
}
