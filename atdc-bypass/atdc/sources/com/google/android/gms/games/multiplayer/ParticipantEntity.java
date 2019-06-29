package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import java.util.Arrays;

public final class ParticipantEntity extends GamesDowngradeableSafeParcel implements Participant {
    public static final Creator<ParticipantEntity> CREATOR = new zza();
    private final int zzLe;
    private final Uri zzaXU;
    private final Uri zzaXV;
    private final String zzaYf;
    private final String zzaYg;
    private final PlayerEntity zzaZi;
    private final String zzalP;
    private final int zzapi;
    private final String zzbah;
    private final String zzbdx;
    private final boolean zzbdy;
    private final ParticipantResult zzbdz;

    static final class zza extends zzc {
        zza() {
        }

        /* renamed from: zzi */
        public final ParticipantEntity createFromParcel(Parcel parcel) {
            if (GamesDowngradeableSafeParcel.zze(DowngradeableSafeParcel.zzrx()) || DowngradeableSafeParcel.zzcA(ParticipantEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            Uri parse = readString3 == null ? null : Uri.parse(readString3);
            readString3 = parcel.readString();
            Uri parse2 = readString3 == null ? null : Uri.parse(readString3);
            int readInt = parcel.readInt();
            String readString4 = parcel.readString();
            Object obj = null;
            boolean z = parcel.readInt() > 0;
            if (parcel.readInt() > 0) {
                obj = 1;
            }
            return new ParticipantEntity(readString, readString2, parse, parse2, readInt, readString4, z, obj != null ? (PlayerEntity) PlayerEntity.CREATOR.createFromParcel(parcel) : null, 7, null, null, null);
        }
    }

    public ParticipantEntity(Participant participant) {
        this.zzbah = participant.getParticipantId();
        this.zzalP = participant.getDisplayName();
        this.zzaXU = participant.getIconImageUri();
        this.zzaXV = participant.getHiResImageUri();
        this.zzLe = participant.getStatus();
        this.zzbdx = participant.zzvr();
        this.zzbdy = participant.isConnectedToRoom();
        Player player = participant.getPlayer();
        this.zzaZi = player == null ? null : new PlayerEntity(player);
        this.zzapi = participant.getCapabilities();
        this.zzbdz = participant.getResult();
        this.zzaYf = participant.getIconImageUrl();
        this.zzaYg = participant.getHiResImageUrl();
    }

    ParticipantEntity(String str, String str2, Uri uri, Uri uri2, int i, String str3, boolean z, PlayerEntity playerEntity, int i2, ParticipantResult participantResult, String str4, String str5) {
        this.zzbah = str;
        this.zzalP = str2;
        this.zzaXU = uri;
        this.zzaXV = uri2;
        this.zzLe = i;
        this.zzbdx = str3;
        this.zzbdy = z;
        this.zzaZi = playerEntity;
        this.zzapi = i2;
        this.zzbdz = participantResult;
        this.zzaYf = str4;
        this.zzaYg = str5;
    }

    static int zza(Participant participant) {
        return Arrays.hashCode(new Object[]{participant.getPlayer(), Integer.valueOf(participant.getStatus()), participant.zzvr(), Boolean.valueOf(participant.isConnectedToRoom()), participant.getDisplayName(), participant.getIconImageUri(), participant.getHiResImageUri(), Integer.valueOf(participant.getCapabilities()), participant.getResult(), participant.getParticipantId()});
    }

    static boolean zza(Participant participant, Object obj) {
        if (!(obj instanceof Participant)) {
            return false;
        }
        if (participant == obj) {
            return true;
        }
        Participant participant2 = (Participant) obj;
        return zzbe.equal(participant2.getPlayer(), participant.getPlayer()) && zzbe.equal(Integer.valueOf(participant2.getStatus()), Integer.valueOf(participant.getStatus())) && zzbe.equal(participant2.zzvr(), participant.zzvr()) && zzbe.equal(Boolean.valueOf(participant2.isConnectedToRoom()), Boolean.valueOf(participant.isConnectedToRoom())) && zzbe.equal(participant2.getDisplayName(), participant.getDisplayName()) && zzbe.equal(participant2.getIconImageUri(), participant.getIconImageUri()) && zzbe.equal(participant2.getHiResImageUri(), participant.getHiResImageUri()) && zzbe.equal(Integer.valueOf(participant2.getCapabilities()), Integer.valueOf(participant.getCapabilities())) && zzbe.equal(participant2.getResult(), participant.getResult()) && zzbe.equal(participant2.getParticipantId(), participant.getParticipantId());
    }

    static String zzb(Participant participant) {
        return zzbe.zzt(participant).zzg("ParticipantId", participant.getParticipantId()).zzg("Player", participant.getPlayer()).zzg("Status", Integer.valueOf(participant.getStatus())).zzg("ClientAddress", participant.zzvr()).zzg("ConnectedToRoom", Boolean.valueOf(participant.isConnectedToRoom())).zzg("DisplayName", participant.getDisplayName()).zzg("IconImage", participant.getIconImageUri()).zzg("IconImageUrl", participant.getIconImageUrl()).zzg("HiResImage", participant.getHiResImageUri()).zzg("HiResImageUrl", participant.getHiResImageUrl()).zzg("Capabilities", Integer.valueOf(participant.getCapabilities())).zzg("Result", participant.getResult()).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final Participant freeze() {
        return this;
    }

    public final int getCapabilities() {
        return this.zzapi;
    }

    public final String getDisplayName() {
        return this.zzaZi == null ? this.zzalP : this.zzaZi.getDisplayName();
    }

    public final void getDisplayName(CharArrayBuffer charArrayBuffer) {
        if (this.zzaZi == null) {
            zzh.zzb(this.zzalP, charArrayBuffer);
        } else {
            this.zzaZi.getDisplayName(charArrayBuffer);
        }
    }

    public final Uri getHiResImageUri() {
        return this.zzaZi == null ? this.zzaXV : this.zzaZi.getHiResImageUri();
    }

    public final String getHiResImageUrl() {
        return this.zzaZi == null ? this.zzaYg : this.zzaZi.getHiResImageUrl();
    }

    public final Uri getIconImageUri() {
        return this.zzaZi == null ? this.zzaXU : this.zzaZi.getIconImageUri();
    }

    public final String getIconImageUrl() {
        return this.zzaZi == null ? this.zzaYf : this.zzaZi.getIconImageUrl();
    }

    public final String getParticipantId() {
        return this.zzbah;
    }

    public final Player getPlayer() {
        return this.zzaZi;
    }

    public final ParticipantResult getResult() {
        return this.zzbdz;
    }

    public final int getStatus() {
        return this.zzLe;
    }

    public final int hashCode() {
        return zza(this);
    }

    public final boolean isConnectedToRoom() {
        return this.zzbdy;
    }

    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        return zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getParticipantId(), false);
        zzd.zza(parcel, 2, getDisplayName(), false);
        zzd.zza(parcel, 3, getIconImageUri(), i, false);
        zzd.zza(parcel, 4, getHiResImageUri(), i, false);
        zzd.zzc(parcel, 5, getStatus());
        zzd.zza(parcel, 6, this.zzbdx, false);
        zzd.zza(parcel, 7, isConnectedToRoom());
        zzd.zza(parcel, 8, getPlayer(), i, false);
        zzd.zzc(parcel, 9, this.zzapi);
        zzd.zza(parcel, 10, getResult(), i, false);
        zzd.zza(parcel, 11, getIconImageUrl(), false);
        zzd.zza(parcel, 12, getHiResImageUrl(), false);
        zzd.zzI(parcel, zze);
    }

    public final String zzvr() {
        return this.zzbdx;
    }
}
