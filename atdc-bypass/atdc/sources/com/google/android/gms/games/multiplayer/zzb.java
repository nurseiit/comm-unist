package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;

public final class zzb extends zzc implements Invitation {
    private final Game zzbcO;
    private final ArrayList<Participant> zzbdt;
    private final ParticipantRef zzbdw;

    zzb(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzbcO = new GameRef(dataHolder, i);
        this.zzbdt = new ArrayList(i2);
        String string = getString("external_inviter_id");
        Object obj = null;
        for (int i3 = 0; i3 < i2; i3++) {
            ParticipantRef participantRef = new ParticipantRef(this.zzaCX, this.zzaFx + i3);
            if (participantRef.getParticipantId().equals(string)) {
                obj = participantRef;
            }
            this.zzbdt.add(participantRef);
        }
        this.zzbdw = (ParticipantRef) zzbo.zzb(obj, (Object) "Must have a valid inviter!");
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return InvitationEntity.zza(this, obj);
    }

    public final /* synthetic */ Object freeze() {
        return new InvitationEntity(this);
    }

    public final int getAvailableAutoMatchSlots() {
        return !getBoolean("has_automatch_criteria") ? 0 : getInteger("automatch_max_players");
    }

    public final long getCreationTimestamp() {
        return Math.max(getLong("creation_timestamp"), getLong("last_modified_timestamp"));
    }

    public final Game getGame() {
        return this.zzbcO;
    }

    public final String getInvitationId() {
        return getString("external_invitation_id");
    }

    public final int getInvitationType() {
        return getInteger("type");
    }

    public final Participant getInviter() {
        return this.zzbdw;
    }

    public final ArrayList<Participant> getParticipants() {
        return this.zzbdt;
    }

    public final int getVariant() {
        return getInteger("variant");
    }

    public final int hashCode() {
        return InvitationEntity.zza(this);
    }

    public final String toString() {
        return InvitationEntity.zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        ((InvitationEntity) ((Invitation) freeze())).writeToParcel(parcel, i);
    }
}
