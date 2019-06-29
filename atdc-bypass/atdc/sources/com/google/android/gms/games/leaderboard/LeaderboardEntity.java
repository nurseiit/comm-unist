package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;
import java.util.Arrays;

public final class LeaderboardEntity implements Leaderboard {
    private final Uri zzaXU;
    private final String zzaYf;
    private final String zzalP;
    private final String zzbcL;
    private final int zzbcM;
    private final ArrayList<zzb> zzbcN;
    private final Game zzbcO;

    public LeaderboardEntity(Leaderboard leaderboard) {
        this.zzbcL = leaderboard.getLeaderboardId();
        this.zzalP = leaderboard.getDisplayName();
        this.zzaXU = leaderboard.getIconImageUri();
        this.zzaYf = leaderboard.getIconImageUrl();
        this.zzbcM = leaderboard.getScoreOrder();
        Game game = leaderboard.getGame();
        this.zzbcO = game == null ? null : new GameEntity(game);
        ArrayList variants = leaderboard.getVariants();
        int size = variants.size();
        this.zzbcN = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            this.zzbcN.add((zzb) ((LeaderboardVariant) variants.get(i)).freeze());
        }
    }

    static int zza(Leaderboard leaderboard) {
        return Arrays.hashCode(new Object[]{leaderboard.getLeaderboardId(), leaderboard.getDisplayName(), leaderboard.getIconImageUri(), Integer.valueOf(leaderboard.getScoreOrder()), leaderboard.getVariants()});
    }

    static boolean zza(Leaderboard leaderboard, Object obj) {
        if (!(obj instanceof Leaderboard)) {
            return false;
        }
        if (leaderboard == obj) {
            return true;
        }
        Leaderboard leaderboard2 = (Leaderboard) obj;
        return zzbe.equal(leaderboard2.getLeaderboardId(), leaderboard.getLeaderboardId()) && zzbe.equal(leaderboard2.getDisplayName(), leaderboard.getDisplayName()) && zzbe.equal(leaderboard2.getIconImageUri(), leaderboard.getIconImageUri()) && zzbe.equal(Integer.valueOf(leaderboard2.getScoreOrder()), Integer.valueOf(leaderboard.getScoreOrder())) && zzbe.equal(leaderboard2.getVariants(), leaderboard.getVariants());
    }

    static String zzb(Leaderboard leaderboard) {
        return zzbe.zzt(leaderboard).zzg("LeaderboardId", leaderboard.getLeaderboardId()).zzg("DisplayName", leaderboard.getDisplayName()).zzg("IconImageUri", leaderboard.getIconImageUri()).zzg("IconImageUrl", leaderboard.getIconImageUrl()).zzg("ScoreOrder", Integer.valueOf(leaderboard.getScoreOrder())).zzg("Variants", leaderboard.getVariants()).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final String getDisplayName() {
        return this.zzalP;
    }

    public final void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzalP, charArrayBuffer);
    }

    public final Game getGame() {
        return this.zzbcO;
    }

    public final Uri getIconImageUri() {
        return this.zzaXU;
    }

    public final String getIconImageUrl() {
        return this.zzaYf;
    }

    public final String getLeaderboardId() {
        return this.zzbcL;
    }

    public final int getScoreOrder() {
        return this.zzbcM;
    }

    public final ArrayList<LeaderboardVariant> getVariants() {
        return new ArrayList(this.zzbcN);
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
