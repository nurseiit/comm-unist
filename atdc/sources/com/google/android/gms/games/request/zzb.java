package com.google.android.gms.games.request;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public final class zzb extends zzc implements GameRequest {
    private final int zzbcP;

    public zzb(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzbcP = i2;
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return GameRequestEntity.zza(this, obj);
    }

    public final /* synthetic */ Object freeze() {
        return new GameRequestEntity(this);
    }

    public final long getCreationTimestamp() {
        return getLong("creation_timestamp");
    }

    public final byte[] getData() {
        return getByteArray("data");
    }

    public final long getExpirationTimestamp() {
        return getLong("expiration_timestamp");
    }

    public final Game getGame() {
        return new GameRef(this.zzaCX, this.zzaFx);
    }

    public final int getRecipientStatus(String str) {
        for (int i = this.zzaFx; i < this.zzaFx + this.zzbcP; i++) {
            int zzat = this.zzaCX.zzat(i);
            if (this.zzaCX.zzd("recipient_external_player_id", i, zzat).equals(str)) {
                return this.zzaCX.zzc("recipient_status", i, zzat);
            }
        }
        return -1;
    }

    public final List<Player> getRecipients() {
        ArrayList arrayList = new ArrayList(this.zzbcP);
        for (int i = 0; i < this.zzbcP; i++) {
            arrayList.add(new PlayerRef(this.zzaCX, this.zzaFx + i, "recipient_"));
        }
        return arrayList;
    }

    public final String getRequestId() {
        return getString("external_request_id");
    }

    public final Player getSender() {
        return new PlayerRef(this.zzaCX, this.zzaFx, "sender_");
    }

    public final int getStatus() {
        return getInteger("status");
    }

    public final int getType() {
        return getInteger("type");
    }

    public final int hashCode() {
        return GameRequestEntity.zza(this);
    }

    public final boolean isConsumed(String str) {
        return getRecipientStatus(str) == 1;
    }

    public final String toString() {
        return GameRequestEntity.zzc(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        ((GameRequestEntity) ((GameRequest) freeze())).writeToParcel(parcel, i);
    }
}
