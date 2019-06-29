package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.internal.zzc;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;
import java.util.Arrays;

public final class TurnBasedMatchEntity extends zzc implements TurnBasedMatch {
    public static final Creator<TurnBasedMatchEntity> CREATOR = new zzc();
    private final long mCreationTimestamp;
    private final int mVersion;
    private final String zzaZZ;
    private final long zzaZl;
    private final String zzafa;
    private final GameEntity zzbbN;
    private final Bundle zzbdL;
    private final String zzbdN;
    private final String zzbdV;
    private final String zzbdW;
    private final int zzbdX;
    private final byte[] zzbdY;
    private final String zzbdZ;
    private final ArrayList<ParticipantEntity> zzbdt;
    private final int zzbdu;
    private final byte[] zzbea;
    private final int zzbeb;
    private final int zzbec;
    private final boolean zzbed;
    private final String zzbee;

    TurnBasedMatchEntity(GameEntity gameEntity, String str, String str2, long j, String str3, long j2, String str4, int i, int i2, int i3, byte[] bArr, ArrayList<ParticipantEntity> arrayList, String str5, byte[] bArr2, int i4, Bundle bundle, int i5, boolean z, String str6, String str7) {
        this.zzbbN = gameEntity;
        this.zzaZZ = str;
        this.zzbdN = str2;
        this.mCreationTimestamp = j;
        this.zzbdV = str3;
        this.zzaZl = j2;
        this.zzbdW = str4;
        this.zzbdX = i;
        this.zzbec = i5;
        this.zzbdu = i2;
        this.mVersion = i3;
        this.zzbdY = bArr;
        this.zzbdt = arrayList;
        this.zzbdZ = str5;
        this.zzbea = bArr2;
        this.zzbeb = i4;
        this.zzbdL = bundle;
        this.zzbed = z;
        this.zzafa = str6;
        this.zzbee = str7;
    }

    public TurnBasedMatchEntity(TurnBasedMatch turnBasedMatch) {
        this.zzbbN = new GameEntity(turnBasedMatch.getGame());
        this.zzaZZ = turnBasedMatch.getMatchId();
        this.zzbdN = turnBasedMatch.getCreatorId();
        this.mCreationTimestamp = turnBasedMatch.getCreationTimestamp();
        this.zzbdV = turnBasedMatch.getLastUpdaterId();
        this.zzaZl = turnBasedMatch.getLastUpdatedTimestamp();
        this.zzbdW = turnBasedMatch.getPendingParticipantId();
        this.zzbdX = turnBasedMatch.getStatus();
        this.zzbec = turnBasedMatch.getTurnStatus();
        this.zzbdu = turnBasedMatch.getVariant();
        this.mVersion = turnBasedMatch.getVersion();
        this.zzbdZ = turnBasedMatch.getRematchId();
        this.zzbeb = turnBasedMatch.getMatchNumber();
        this.zzbdL = turnBasedMatch.getAutoMatchCriteria();
        this.zzbed = turnBasedMatch.isLocallyModified();
        this.zzafa = turnBasedMatch.getDescription();
        this.zzbee = turnBasedMatch.getDescriptionParticipantId();
        byte[] data = turnBasedMatch.getData();
        int i = 0;
        if (data == null) {
            this.zzbdY = null;
        } else {
            this.zzbdY = new byte[data.length];
            System.arraycopy(data, 0, this.zzbdY, 0, data.length);
        }
        data = turnBasedMatch.getPreviousMatchData();
        if (data == null) {
            this.zzbea = null;
        } else {
            this.zzbea = new byte[data.length];
            System.arraycopy(data, 0, this.zzbea, 0, data.length);
        }
        ArrayList participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        this.zzbdt = new ArrayList(size);
        while (i < size) {
            this.zzbdt.add((ParticipantEntity) ((Participant) participants.get(i)).freeze());
            i++;
        }
    }

    static int zza(TurnBasedMatch turnBasedMatch) {
        return Arrays.hashCode(new Object[]{turnBasedMatch.getGame(), turnBasedMatch.getMatchId(), turnBasedMatch.getCreatorId(), Long.valueOf(turnBasedMatch.getCreationTimestamp()), turnBasedMatch.getLastUpdaterId(), Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp()), turnBasedMatch.getPendingParticipantId(), Integer.valueOf(turnBasedMatch.getStatus()), Integer.valueOf(turnBasedMatch.getTurnStatus()), turnBasedMatch.getDescription(), Integer.valueOf(turnBasedMatch.getVariant()), Integer.valueOf(turnBasedMatch.getVersion()), turnBasedMatch.getParticipants(), turnBasedMatch.getRematchId(), Integer.valueOf(turnBasedMatch.getMatchNumber()), turnBasedMatch.getAutoMatchCriteria(), Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots()), Boolean.valueOf(turnBasedMatch.isLocallyModified())});
    }

    static int zza(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = (Participant) participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant.getStatus();
            }
        }
        String valueOf = String.valueOf(turnBasedMatch.getMatchId());
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 29) + String.valueOf(valueOf).length());
        stringBuilder.append("Participant ");
        stringBuilder.append(str);
        stringBuilder.append(" is not in match ");
        stringBuilder.append(valueOf);
        throw new IllegalStateException(stringBuilder.toString());
    }

    static boolean zza(TurnBasedMatch turnBasedMatch, Object obj) {
        if (!(obj instanceof TurnBasedMatch)) {
            return false;
        }
        if (turnBasedMatch == obj) {
            return true;
        }
        TurnBasedMatch turnBasedMatch2 = (TurnBasedMatch) obj;
        return zzbe.equal(turnBasedMatch2.getGame(), turnBasedMatch.getGame()) && zzbe.equal(turnBasedMatch2.getMatchId(), turnBasedMatch.getMatchId()) && zzbe.equal(turnBasedMatch2.getCreatorId(), turnBasedMatch.getCreatorId()) && zzbe.equal(Long.valueOf(turnBasedMatch2.getCreationTimestamp()), Long.valueOf(turnBasedMatch.getCreationTimestamp())) && zzbe.equal(turnBasedMatch2.getLastUpdaterId(), turnBasedMatch.getLastUpdaterId()) && zzbe.equal(Long.valueOf(turnBasedMatch2.getLastUpdatedTimestamp()), Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp())) && zzbe.equal(turnBasedMatch2.getPendingParticipantId(), turnBasedMatch.getPendingParticipantId()) && zzbe.equal(Integer.valueOf(turnBasedMatch2.getStatus()), Integer.valueOf(turnBasedMatch.getStatus())) && zzbe.equal(Integer.valueOf(turnBasedMatch2.getTurnStatus()), Integer.valueOf(turnBasedMatch.getTurnStatus())) && zzbe.equal(turnBasedMatch2.getDescription(), turnBasedMatch.getDescription()) && zzbe.equal(Integer.valueOf(turnBasedMatch2.getVariant()), Integer.valueOf(turnBasedMatch.getVariant())) && zzbe.equal(Integer.valueOf(turnBasedMatch2.getVersion()), Integer.valueOf(turnBasedMatch.getVersion())) && zzbe.equal(turnBasedMatch2.getParticipants(), turnBasedMatch.getParticipants()) && zzbe.equal(turnBasedMatch2.getRematchId(), turnBasedMatch.getRematchId()) && zzbe.equal(Integer.valueOf(turnBasedMatch2.getMatchNumber()), Integer.valueOf(turnBasedMatch.getMatchNumber())) && zzbe.equal(turnBasedMatch2.getAutoMatchCriteria(), turnBasedMatch.getAutoMatchCriteria()) && zzbe.equal(Integer.valueOf(turnBasedMatch2.getAvailableAutoMatchSlots()), Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots())) && zzbe.equal(Boolean.valueOf(turnBasedMatch2.isLocallyModified()), Boolean.valueOf(turnBasedMatch.isLocallyModified()));
    }

    static String zzb(TurnBasedMatch turnBasedMatch) {
        return zzbe.zzt(turnBasedMatch).zzg("Game", turnBasedMatch.getGame()).zzg("MatchId", turnBasedMatch.getMatchId()).zzg("CreatorId", turnBasedMatch.getCreatorId()).zzg("CreationTimestamp", Long.valueOf(turnBasedMatch.getCreationTimestamp())).zzg("LastUpdaterId", turnBasedMatch.getLastUpdaterId()).zzg("LastUpdatedTimestamp", Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp())).zzg("PendingParticipantId", turnBasedMatch.getPendingParticipantId()).zzg("MatchStatus", Integer.valueOf(turnBasedMatch.getStatus())).zzg("TurnStatus", Integer.valueOf(turnBasedMatch.getTurnStatus())).zzg("Description", turnBasedMatch.getDescription()).zzg("Variant", Integer.valueOf(turnBasedMatch.getVariant())).zzg("Data", turnBasedMatch.getData()).zzg("Version", Integer.valueOf(turnBasedMatch.getVersion())).zzg("Participants", turnBasedMatch.getParticipants()).zzg("RematchId", turnBasedMatch.getRematchId()).zzg("PreviousData", turnBasedMatch.getPreviousMatchData()).zzg("MatchNumber", Integer.valueOf(turnBasedMatch.getMatchNumber())).zzg("AutoMatchCriteria", turnBasedMatch.getAutoMatchCriteria()).zzg("AvailableAutoMatchSlots", Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots())).zzg("LocallyModified", Boolean.valueOf(turnBasedMatch.isLocallyModified())).zzg("DescriptionParticipantId", turnBasedMatch.getDescriptionParticipantId()).toString();
    }

    static String zzb(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = (Participant) participants.get(i);
            Player player = participant.getPlayer();
            if (player != null && player.getPlayerId().equals(str)) {
                return participant.getParticipantId();
            }
        }
        return null;
    }

    static Participant zzc(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = (Participant) participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant;
            }
        }
        String valueOf = String.valueOf(turnBasedMatch.getMatchId());
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 29) + String.valueOf(valueOf).length());
        stringBuilder.append("Participant ");
        stringBuilder.append(str);
        stringBuilder.append(" is not in match ");
        stringBuilder.append(valueOf);
        throw new IllegalStateException(stringBuilder.toString());
    }

    static ArrayList<String> zzc(TurnBasedMatch turnBasedMatch) {
        ArrayList participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(((Participant) participants.get(i)).getParticipantId());
        }
        return arrayList;
    }

    public final boolean canRematch() {
        return this.zzbdX == 2 && this.zzbdZ == null;
    }

    public final boolean equals(Object obj) {
        return zza((TurnBasedMatch) this, obj);
    }

    public final TurnBasedMatch freeze() {
        return this;
    }

    public final Bundle getAutoMatchCriteria() {
        return this.zzbdL;
    }

    public final int getAvailableAutoMatchSlots() {
        return this.zzbdL == null ? 0 : this.zzbdL.getInt(Multiplayer.EXTRA_MAX_AUTOMATCH_PLAYERS);
    }

    public final long getCreationTimestamp() {
        return this.mCreationTimestamp;
    }

    public final String getCreatorId() {
        return this.zzbdN;
    }

    public final byte[] getData() {
        return this.zzbdY;
    }

    public final String getDescription() {
        return this.zzafa;
    }

    public final void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzafa, charArrayBuffer);
    }

    public final Participant getDescriptionParticipant() {
        String descriptionParticipantId = getDescriptionParticipantId();
        return descriptionParticipantId == null ? null : getParticipant(descriptionParticipantId);
    }

    public final String getDescriptionParticipantId() {
        return this.zzbee;
    }

    public final Game getGame() {
        return this.zzbbN;
    }

    public final long getLastUpdatedTimestamp() {
        return this.zzaZl;
    }

    public final String getLastUpdaterId() {
        return this.zzbdV;
    }

    public final String getMatchId() {
        return this.zzaZZ;
    }

    public final int getMatchNumber() {
        return this.zzbeb;
    }

    public final Participant getParticipant(String str) {
        return zzc(this, str);
    }

    public final String getParticipantId(String str) {
        return zzb(this, str);
    }

    public final ArrayList<String> getParticipantIds() {
        return zzc(this);
    }

    public final int getParticipantStatus(String str) {
        return zza((TurnBasedMatch) this, str);
    }

    public final ArrayList<Participant> getParticipants() {
        return new ArrayList(this.zzbdt);
    }

    public final String getPendingParticipantId() {
        return this.zzbdW;
    }

    public final byte[] getPreviousMatchData() {
        return this.zzbea;
    }

    public final String getRematchId() {
        return this.zzbdZ;
    }

    public final int getStatus() {
        return this.zzbdX;
    }

    public final int getTurnStatus() {
        return this.zzbec;
    }

    public final int getVariant() {
        return this.zzbdu;
    }

    public final int getVersion() {
        return this.mVersion;
    }

    public final int hashCode() {
        return zza(this);
    }

    public final boolean isDataValid() {
        return true;
    }

    public final boolean isLocallyModified() {
        return this.zzbed;
    }

    public final String toString() {
        return zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getGame(), i, false);
        zzd.zza(parcel, 2, getMatchId(), false);
        zzd.zza(parcel, 3, getCreatorId(), false);
        zzd.zza(parcel, 4, getCreationTimestamp());
        zzd.zza(parcel, 5, getLastUpdaterId(), false);
        zzd.zza(parcel, 6, getLastUpdatedTimestamp());
        zzd.zza(parcel, 7, getPendingParticipantId(), false);
        zzd.zzc(parcel, 8, getStatus());
        zzd.zzc(parcel, 10, getVariant());
        zzd.zzc(parcel, 11, getVersion());
        zzd.zza(parcel, 12, getData(), false);
        zzd.zzc(parcel, 13, getParticipants(), false);
        zzd.zza(parcel, 14, getRematchId(), false);
        zzd.zza(parcel, 15, getPreviousMatchData(), false);
        zzd.zzc(parcel, 16, getMatchNumber());
        zzd.zza(parcel, 17, getAutoMatchCriteria(), false);
        zzd.zzc(parcel, 18, getTurnStatus());
        zzd.zza(parcel, 19, isLocallyModified());
        zzd.zza(parcel, 20, getDescription(), false);
        zzd.zza(parcel, 21, getDescriptionParticipantId(), false);
        zzd.zzI(parcel, zze);
    }
}
