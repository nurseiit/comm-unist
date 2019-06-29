package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;

public final class LeaderboardRef extends zzc implements Leaderboard {
    private final Game zzbcO;
    private final int zzbcP;

    LeaderboardRef(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzbcP = i2;
        this.zzbcO = new GameRef(dataHolder, i);
    }

    public final boolean equals(Object obj) {
        return LeaderboardEntity.zza(this, obj);
    }

    public final /* synthetic */ Object freeze() {
        return new LeaderboardEntity(this);
    }

    public final String getDisplayName() {
        return getString("name");
    }

    public final void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zza("name", charArrayBuffer);
    }

    public final Game getGame() {
        return this.zzbcO;
    }

    public final Uri getIconImageUri() {
        return zzcw("board_icon_image_uri");
    }

    public final String getIconImageUrl() {
        return getString("board_icon_image_url");
    }

    public final String getLeaderboardId() {
        return getString("external_leaderboard_id");
    }

    public final int getScoreOrder() {
        return getInteger("score_order");
    }

    public final ArrayList<LeaderboardVariant> getVariants() {
        ArrayList arrayList = new ArrayList(this.zzbcP);
        for (int i = 0; i < this.zzbcP; i++) {
            arrayList.add(new zzc(this.zzaCX, this.zzaFx + i));
        }
        return arrayList;
    }

    public final int hashCode() {
        return LeaderboardEntity.zza(this);
    }

    public final String toString() {
        return LeaderboardEntity.zzb(this);
    }
}
