package com.google.android.gms.games.event;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import com.google.android.gms.plus.PlusShare;
import com.google.firebase.analytics.FirebaseAnalytics.Param;

public final class EventRef extends zzc implements Event {
    EventRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return EventEntity.zza(this, obj);
    }

    public final /* synthetic */ Object freeze() {
        return new EventEntity(this);
    }

    public final String getDescription() {
        return getString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION);
    }

    public final void getDescription(CharArrayBuffer charArrayBuffer) {
        zza(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, charArrayBuffer);
    }

    public final String getEventId() {
        return getString("external_event_id");
    }

    public final String getFormattedValue() {
        return getString("formatted_value");
    }

    public final void getFormattedValue(CharArrayBuffer charArrayBuffer) {
        zza("formatted_value", charArrayBuffer);
    }

    public final Uri getIconImageUri() {
        return zzcw("icon_image_uri");
    }

    public final String getIconImageUrl() {
        return getString("icon_image_url");
    }

    public final String getName() {
        return getString("name");
    }

    public final void getName(CharArrayBuffer charArrayBuffer) {
        zza("name", charArrayBuffer);
    }

    public final Player getPlayer() {
        return new PlayerRef(this.zzaCX, this.zzaFx);
    }

    public final long getValue() {
        return getLong(Param.VALUE);
    }

    public final int hashCode() {
        return EventEntity.zza(this);
    }

    public final boolean isVisible() {
        return getBoolean("visibility");
    }

    public final String toString() {
        return EventEntity.zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        ((EventEntity) ((Event) freeze())).writeToParcel(parcel, i);
    }
}
