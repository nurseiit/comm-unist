package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;

public final class ExperienceEventRef extends zzc implements ExperienceEvent {
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return ExperienceEventEntity.zza(this, obj);
    }

    public final /* synthetic */ Object freeze() {
        return new ExperienceEventEntity(this);
    }

    public final Game getGame() {
        return null;
    }

    public final Uri getIconImageUri() {
        return zzcw("icon_uri");
    }

    public final String getIconImageUrl() {
        return getString("icon_url");
    }

    public final int getType() {
        return getInteger("type");
    }

    public final int hashCode() {
        return ExperienceEventEntity.zza(this);
    }

    public final String toString() {
        return ExperienceEventEntity.zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        ((ExperienceEventEntity) ((ExperienceEvent) freeze())).writeToParcel(parcel, i);
    }

    public final String zzuY() {
        return getString("external_experience_id");
    }

    public final String zzuZ() {
        return getString("display_title");
    }

    public final String zzva() {
        return getString("display_description");
    }

    public final long zzvb() {
        return getLong("created_timestamp");
    }

    public final long zzvc() {
        return getLong("xp_earned");
    }

    public final long zzvd() {
        return getLong("current_xp");
    }

    public final int zzve() {
        return getInteger("newLevel");
    }
}
