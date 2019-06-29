package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;
import java.util.List;

public final class QuestRef extends zzc implements Quest {
    private final Game zzbcO;
    private final int zzbcP;

    QuestRef(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzbcO = new GameRef(dataHolder, i);
        this.zzbcP = i2;
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return QuestEntity.zza(this, obj);
    }

    public final /* synthetic */ Object freeze() {
        return new QuestEntity(this);
    }

    public final long getAcceptedTimestamp() {
        return getLong("accepted_ts");
    }

    public final Uri getBannerImageUri() {
        return zzcw("quest_banner_image_uri");
    }

    public final String getBannerImageUrl() {
        return getString("quest_banner_image_url");
    }

    public final Milestone getCurrentMilestone() {
        return (Milestone) zzvt().get(0);
    }

    public final String getDescription() {
        return getString("quest_description");
    }

    public final void getDescription(CharArrayBuffer charArrayBuffer) {
        zza("quest_description", charArrayBuffer);
    }

    public final long getEndTimestamp() {
        return getLong("quest_end_ts");
    }

    public final Game getGame() {
        return this.zzbcO;
    }

    public final Uri getIconImageUri() {
        return zzcw("quest_icon_image_uri");
    }

    public final String getIconImageUrl() {
        return getString("quest_icon_image_url");
    }

    public final long getLastUpdatedTimestamp() {
        return getLong("quest_last_updated_ts");
    }

    public final String getName() {
        return getString("quest_name");
    }

    public final void getName(CharArrayBuffer charArrayBuffer) {
        zza("quest_name", charArrayBuffer);
    }

    public final String getQuestId() {
        return getString("external_quest_id");
    }

    public final long getStartTimestamp() {
        return getLong("quest_start_ts");
    }

    public final int getState() {
        return getInteger("quest_state");
    }

    public final int getType() {
        return getInteger("quest_type");
    }

    public final int hashCode() {
        return QuestEntity.zza(this);
    }

    public final boolean isEndingSoon() {
        return getLong("notification_ts") <= System.currentTimeMillis() + 1800000;
    }

    public final String toString() {
        return QuestEntity.zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        ((QuestEntity) ((Quest) freeze())).writeToParcel(parcel, i);
    }

    public final List<Milestone> zzvt() {
        ArrayList arrayList = new ArrayList(this.zzbcP);
        for (int i = 0; i < this.zzbcP; i++) {
            arrayList.add(new zzb(this.zzaCX, this.zzaFx + i));
        }
        return arrayList;
    }

    public final long zzvu() {
        return getLong("notification_ts");
    }
}
