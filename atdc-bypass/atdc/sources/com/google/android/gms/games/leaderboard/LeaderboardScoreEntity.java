package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import java.util.Arrays;

public final class LeaderboardScoreEntity implements LeaderboardScore {
    private final long zzbcR;
    private final String zzbcS;
    private final String zzbcT;
    private final long zzbcU;
    private final long zzbcV;
    private final String zzbcW;
    private final Uri zzbcX;
    private final Uri zzbcY;
    private final PlayerEntity zzbcZ;
    private final String zzbda;
    private final String zzbdb;
    private final String zzbdc;

    public LeaderboardScoreEntity(LeaderboardScore leaderboardScore) {
        this.zzbcR = leaderboardScore.getRank();
        this.zzbcS = (String) zzbo.zzu(leaderboardScore.getDisplayRank());
        this.zzbcT = (String) zzbo.zzu(leaderboardScore.getDisplayScore());
        this.zzbcU = leaderboardScore.getRawScore();
        this.zzbcV = leaderboardScore.getTimestampMillis();
        this.zzbcW = leaderboardScore.getScoreHolderDisplayName();
        this.zzbcX = leaderboardScore.getScoreHolderIconImageUri();
        this.zzbcY = leaderboardScore.getScoreHolderHiResImageUri();
        Player scoreHolder = leaderboardScore.getScoreHolder();
        this.zzbcZ = scoreHolder == null ? null : (PlayerEntity) scoreHolder.freeze();
        this.zzbda = leaderboardScore.getScoreTag();
        this.zzbdb = leaderboardScore.getScoreHolderIconImageUrl();
        this.zzbdc = leaderboardScore.getScoreHolderHiResImageUrl();
    }

    static int zza(LeaderboardScore leaderboardScore) {
        return Arrays.hashCode(new Object[]{Long.valueOf(leaderboardScore.getRank()), leaderboardScore.getDisplayRank(), Long.valueOf(leaderboardScore.getRawScore()), leaderboardScore.getDisplayScore(), Long.valueOf(leaderboardScore.getTimestampMillis()), leaderboardScore.getScoreHolderDisplayName(), leaderboardScore.getScoreHolderIconImageUri(), leaderboardScore.getScoreHolderHiResImageUri(), leaderboardScore.getScoreHolder()});
    }

    static boolean zza(LeaderboardScore leaderboardScore, Object obj) {
        if (!(obj instanceof LeaderboardScore)) {
            return false;
        }
        if (leaderboardScore == obj) {
            return true;
        }
        LeaderboardScore leaderboardScore2 = (LeaderboardScore) obj;
        return zzbe.equal(Long.valueOf(leaderboardScore2.getRank()), Long.valueOf(leaderboardScore.getRank())) && zzbe.equal(leaderboardScore2.getDisplayRank(), leaderboardScore.getDisplayRank()) && zzbe.equal(Long.valueOf(leaderboardScore2.getRawScore()), Long.valueOf(leaderboardScore.getRawScore())) && zzbe.equal(leaderboardScore2.getDisplayScore(), leaderboardScore.getDisplayScore()) && zzbe.equal(Long.valueOf(leaderboardScore2.getTimestampMillis()), Long.valueOf(leaderboardScore.getTimestampMillis())) && zzbe.equal(leaderboardScore2.getScoreHolderDisplayName(), leaderboardScore.getScoreHolderDisplayName()) && zzbe.equal(leaderboardScore2.getScoreHolderIconImageUri(), leaderboardScore.getScoreHolderIconImageUri()) && zzbe.equal(leaderboardScore2.getScoreHolderHiResImageUri(), leaderboardScore.getScoreHolderHiResImageUri()) && zzbe.equal(leaderboardScore2.getScoreHolder(), leaderboardScore.getScoreHolder()) && zzbe.equal(leaderboardScore2.getScoreTag(), leaderboardScore.getScoreTag());
    }

    static String zzb(LeaderboardScore leaderboardScore) {
        return zzbe.zzt(leaderboardScore).zzg("Rank", Long.valueOf(leaderboardScore.getRank())).zzg("DisplayRank", leaderboardScore.getDisplayRank()).zzg("Score", Long.valueOf(leaderboardScore.getRawScore())).zzg("DisplayScore", leaderboardScore.getDisplayScore()).zzg("Timestamp", Long.valueOf(leaderboardScore.getTimestampMillis())).zzg("DisplayName", leaderboardScore.getScoreHolderDisplayName()).zzg("IconImageUri", leaderboardScore.getScoreHolderIconImageUri()).zzg("IconImageUrl", leaderboardScore.getScoreHolderIconImageUrl()).zzg("HiResImageUri", leaderboardScore.getScoreHolderHiResImageUri()).zzg("HiResImageUrl", leaderboardScore.getScoreHolderHiResImageUrl()).zzg("Player", leaderboardScore.getScoreHolder() == null ? null : leaderboardScore.getScoreHolder()).zzg("ScoreTag", leaderboardScore.getScoreTag()).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final String getDisplayRank() {
        return this.zzbcS;
    }

    public final void getDisplayRank(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzbcS, charArrayBuffer);
    }

    public final String getDisplayScore() {
        return this.zzbcT;
    }

    public final void getDisplayScore(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzbcT, charArrayBuffer);
    }

    public final long getRank() {
        return this.zzbcR;
    }

    public final long getRawScore() {
        return this.zzbcU;
    }

    public final Player getScoreHolder() {
        return this.zzbcZ;
    }

    public final String getScoreHolderDisplayName() {
        return this.zzbcZ == null ? this.zzbcW : this.zzbcZ.getDisplayName();
    }

    public final void getScoreHolderDisplayName(CharArrayBuffer charArrayBuffer) {
        if (this.zzbcZ == null) {
            zzh.zzb(this.zzbcW, charArrayBuffer);
        } else {
            this.zzbcZ.getDisplayName(charArrayBuffer);
        }
    }

    public final Uri getScoreHolderHiResImageUri() {
        return this.zzbcZ == null ? this.zzbcY : this.zzbcZ.getHiResImageUri();
    }

    public final String getScoreHolderHiResImageUrl() {
        return this.zzbcZ == null ? this.zzbdc : this.zzbcZ.getHiResImageUrl();
    }

    public final Uri getScoreHolderIconImageUri() {
        return this.zzbcZ == null ? this.zzbcX : this.zzbcZ.getIconImageUri();
    }

    public final String getScoreHolderIconImageUrl() {
        return this.zzbcZ == null ? this.zzbdb : this.zzbcZ.getIconImageUrl();
    }

    public final String getScoreTag() {
        return this.zzbda;
    }

    public final long getTimestampMillis() {
        return this.zzbcV;
    }

    public final int hashCode() {
        return zza(this);
    }

    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        return zzb(this);
    }
}
