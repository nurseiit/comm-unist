package com.google.android.gms.games.event;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.zzc;
import java.util.Arrays;

public final class EventEntity extends zzc implements Event {
    public static final Creator<EventEntity> CREATOR = new zza();
    private final String mName;
    private final Uri zzaXU;
    private final String zzaYf;
    private final PlayerEntity zzaZi;
    private final String zzaZn;
    private final String zzaZo;
    private final long zzaeZ;
    private final String zzafa;
    private final boolean zzxa;

    public EventEntity(Event event) {
        this.zzaZn = event.getEventId();
        this.mName = event.getName();
        this.zzafa = event.getDescription();
        this.zzaXU = event.getIconImageUri();
        this.zzaYf = event.getIconImageUrl();
        this.zzaZi = (PlayerEntity) event.getPlayer().freeze();
        this.zzaeZ = event.getValue();
        this.zzaZo = event.getFormattedValue();
        this.zzxa = event.isVisible();
    }

    EventEntity(String str, String str2, String str3, Uri uri, String str4, Player player, long j, String str5, boolean z) {
        this.zzaZn = str;
        this.mName = str2;
        this.zzafa = str3;
        this.zzaXU = uri;
        this.zzaYf = str4;
        this.zzaZi = new PlayerEntity(player);
        this.zzaeZ = j;
        this.zzaZo = str5;
        this.zzxa = z;
    }

    static int zza(Event event) {
        return Arrays.hashCode(new Object[]{event.getEventId(), event.getName(), event.getDescription(), event.getIconImageUri(), event.getIconImageUrl(), event.getPlayer(), Long.valueOf(event.getValue()), event.getFormattedValue(), Boolean.valueOf(event.isVisible())});
    }

    static boolean zza(Event event, Object obj) {
        if (!(obj instanceof Event)) {
            return false;
        }
        if (event == obj) {
            return true;
        }
        Event event2 = (Event) obj;
        return zzbe.equal(event2.getEventId(), event.getEventId()) && zzbe.equal(event2.getName(), event.getName()) && zzbe.equal(event2.getDescription(), event.getDescription()) && zzbe.equal(event2.getIconImageUri(), event.getIconImageUri()) && zzbe.equal(event2.getIconImageUrl(), event.getIconImageUrl()) && zzbe.equal(event2.getPlayer(), event.getPlayer()) && zzbe.equal(Long.valueOf(event2.getValue()), Long.valueOf(event.getValue())) && zzbe.equal(event2.getFormattedValue(), event.getFormattedValue()) && zzbe.equal(Boolean.valueOf(event2.isVisible()), Boolean.valueOf(event.isVisible()));
    }

    static String zzb(Event event) {
        return zzbe.zzt(event).zzg("Id", event.getEventId()).zzg("Name", event.getName()).zzg("Description", event.getDescription()).zzg("IconImageUri", event.getIconImageUri()).zzg("IconImageUrl", event.getIconImageUrl()).zzg("Player", event.getPlayer()).zzg("Value", Long.valueOf(event.getValue())).zzg("FormattedValue", event.getFormattedValue()).zzg("isVisible", Boolean.valueOf(event.isVisible())).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final Event freeze() {
        return this;
    }

    public final String getDescription() {
        return this.zzafa;
    }

    public final void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzafa, charArrayBuffer);
    }

    public final String getEventId() {
        return this.zzaZn;
    }

    public final String getFormattedValue() {
        return this.zzaZo;
    }

    public final void getFormattedValue(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzaZo, charArrayBuffer);
    }

    public final Uri getIconImageUri() {
        return this.zzaXU;
    }

    public final String getIconImageUrl() {
        return this.zzaYf;
    }

    public final String getName() {
        return this.mName;
    }

    public final void getName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.mName, charArrayBuffer);
    }

    public final Player getPlayer() {
        return this.zzaZi;
    }

    public final long getValue() {
        return this.zzaeZ;
    }

    public final int hashCode() {
        return zza(this);
    }

    public final boolean isDataValid() {
        return true;
    }

    public final boolean isVisible() {
        return this.zzxa;
    }

    public final String toString() {
        return zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getEventId(), false);
        zzd.zza(parcel, 2, getName(), false);
        zzd.zza(parcel, 3, getDescription(), false);
        zzd.zza(parcel, 4, getIconImageUri(), i, false);
        zzd.zza(parcel, 5, getIconImageUrl(), false);
        zzd.zza(parcel, 6, getPlayer(), i, false);
        zzd.zza(parcel, 7, getValue());
        zzd.zza(parcel, 8, getFormattedValue(), false);
        zzd.zza(parcel, 9, isVisible());
        zzd.zzI(parcel, zze);
    }
}
