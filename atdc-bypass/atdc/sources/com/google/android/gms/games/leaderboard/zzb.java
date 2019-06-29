package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.internal.zzcai;
import java.util.Arrays;

public final class zzb implements LeaderboardVariant {
    private final int zzbde;
    private final int zzbdf;
    private final boolean zzbdg;
    private final long zzbdh;
    private final String zzbdi;
    private final long zzbdj;
    private final String zzbdk;
    private final String zzbdl;
    private final long zzbdm;
    private final String zzbdn;
    private final String zzbdo;
    private final String zzbdp;

    public zzb(LeaderboardVariant leaderboardVariant) {
        this.zzbde = leaderboardVariant.getTimeSpan();
        this.zzbdf = leaderboardVariant.getCollection();
        this.zzbdg = leaderboardVariant.hasPlayerInfo();
        this.zzbdh = leaderboardVariant.getRawPlayerScore();
        this.zzbdi = leaderboardVariant.getDisplayPlayerScore();
        this.zzbdj = leaderboardVariant.getPlayerRank();
        this.zzbdk = leaderboardVariant.getDisplayPlayerRank();
        this.zzbdl = leaderboardVariant.getPlayerScoreTag();
        this.zzbdm = leaderboardVariant.getNumScores();
        this.zzbdn = leaderboardVariant.zzvo();
        this.zzbdo = leaderboardVariant.zzvp();
        this.zzbdp = leaderboardVariant.zzvq();
    }

    static int zza(LeaderboardVariant leaderboardVariant) {
        return Arrays.hashCode(new Object[]{Integer.valueOf(leaderboardVariant.getTimeSpan()), Integer.valueOf(leaderboardVariant.getCollection()), Boolean.valueOf(leaderboardVariant.hasPlayerInfo()), Long.valueOf(leaderboardVariant.getRawPlayerScore()), leaderboardVariant.getDisplayPlayerScore(), Long.valueOf(leaderboardVariant.getPlayerRank()), leaderboardVariant.getDisplayPlayerRank(), Long.valueOf(leaderboardVariant.getNumScores()), leaderboardVariant.zzvo(), leaderboardVariant.zzvq(), leaderboardVariant.zzvp()});
    }

    static boolean zza(LeaderboardVariant leaderboardVariant, Object obj) {
        if (!(obj instanceof LeaderboardVariant)) {
            return false;
        }
        if (leaderboardVariant == obj) {
            return true;
        }
        LeaderboardVariant leaderboardVariant2 = (LeaderboardVariant) obj;
        return zzbe.equal(Integer.valueOf(leaderboardVariant2.getTimeSpan()), Integer.valueOf(leaderboardVariant.getTimeSpan())) && zzbe.equal(Integer.valueOf(leaderboardVariant2.getCollection()), Integer.valueOf(leaderboardVariant.getCollection())) && zzbe.equal(Boolean.valueOf(leaderboardVariant2.hasPlayerInfo()), Boolean.valueOf(leaderboardVariant.hasPlayerInfo())) && zzbe.equal(Long.valueOf(leaderboardVariant2.getRawPlayerScore()), Long.valueOf(leaderboardVariant.getRawPlayerScore())) && zzbe.equal(leaderboardVariant2.getDisplayPlayerScore(), leaderboardVariant.getDisplayPlayerScore()) && zzbe.equal(Long.valueOf(leaderboardVariant2.getPlayerRank()), Long.valueOf(leaderboardVariant.getPlayerRank())) && zzbe.equal(leaderboardVariant2.getDisplayPlayerRank(), leaderboardVariant.getDisplayPlayerRank()) && zzbe.equal(Long.valueOf(leaderboardVariant2.getNumScores()), Long.valueOf(leaderboardVariant.getNumScores())) && zzbe.equal(leaderboardVariant2.zzvo(), leaderboardVariant.zzvo()) && zzbe.equal(leaderboardVariant2.zzvq(), leaderboardVariant.zzvq()) && zzbe.equal(leaderboardVariant2.zzvp(), leaderboardVariant.zzvp());
    }

    static String zzb(LeaderboardVariant leaderboardVariant) {
        Object obj;
        zzbg zzg = zzbe.zzt(leaderboardVariant).zzg("TimeSpan", zzcai.zzbc(leaderboardVariant.getTimeSpan()));
        String str = "Collection";
        int collection = leaderboardVariant.getCollection();
        switch (collection) {
            case -1:
                obj = "UNKNOWN";
                break;
            case 0:
                obj = "PUBLIC";
                break;
            case 1:
                obj = "SOCIAL";
                break;
            case 2:
                obj = "SOCIAL_1P";
                break;
            default:
                StringBuilder stringBuilder = new StringBuilder(43);
                stringBuilder.append("Unknown leaderboard collection: ");
                stringBuilder.append(collection);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
        return zzg.zzg(str, obj).zzg("RawPlayerScore", leaderboardVariant.hasPlayerInfo() ? Long.valueOf(leaderboardVariant.getRawPlayerScore()) : "none").zzg("DisplayPlayerScore", leaderboardVariant.hasPlayerInfo() ? leaderboardVariant.getDisplayPlayerScore() : "none").zzg("PlayerRank", leaderboardVariant.hasPlayerInfo() ? Long.valueOf(leaderboardVariant.getPlayerRank()) : "none").zzg("DisplayPlayerRank", leaderboardVariant.hasPlayerInfo() ? leaderboardVariant.getDisplayPlayerRank() : "none").zzg("NumScores", Long.valueOf(leaderboardVariant.getNumScores())).zzg("TopPageNextToken", leaderboardVariant.zzvo()).zzg("WindowPageNextToken", leaderboardVariant.zzvq()).zzg("WindowPagePrevToken", leaderboardVariant.zzvp()).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final int getCollection() {
        return this.zzbdf;
    }

    public final String getDisplayPlayerRank() {
        return this.zzbdk;
    }

    public final String getDisplayPlayerScore() {
        return this.zzbdi;
    }

    public final long getNumScores() {
        return this.zzbdm;
    }

    public final long getPlayerRank() {
        return this.zzbdj;
    }

    public final String getPlayerScoreTag() {
        return this.zzbdl;
    }

    public final long getRawPlayerScore() {
        return this.zzbdh;
    }

    public final int getTimeSpan() {
        return this.zzbde;
    }

    public final boolean hasPlayerInfo() {
        return this.zzbdg;
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

    public final String zzvo() {
        return this.zzbdn;
    }

    public final String zzvp() {
        return this.zzbdo;
    }

    public final String zzvq() {
        return this.zzbdp;
    }
}
