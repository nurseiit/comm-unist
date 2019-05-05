package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.zzc;
import java.util.Arrays;

public final class ExperienceEventEntity extends zzc implements ExperienceEvent {
    public static final Creator<ExperienceEventEntity> CREATOR = new zza();
    private final Uri zzaXU;
    private final String zzaYf;
    private final int zzamr;
    private final String zzbbM;
    private final GameEntity zzbbN;
    private final String zzbbO;
    private final String zzbbP;
    private final long zzbbQ;
    private final long zzbbR;
    private final long zzbbS;
    private final int zzbbT;

    public ExperienceEventEntity(ExperienceEvent experienceEvent) {
        this.zzbbM = experienceEvent.zzuY();
        this.zzbbN = new GameEntity(experienceEvent.getGame());
        this.zzbbO = experienceEvent.zzuZ();
        this.zzbbP = experienceEvent.zzva();
        this.zzaYf = experienceEvent.getIconImageUrl();
        this.zzaXU = experienceEvent.getIconImageUri();
        this.zzbbQ = experienceEvent.zzvb();
        this.zzbbR = experienceEvent.zzvc();
        this.zzbbS = experienceEvent.zzvd();
        this.zzamr = experienceEvent.getType();
        this.zzbbT = experienceEvent.zzve();
    }

    ExperienceEventEntity(String str, GameEntity gameEntity, String str2, String str3, String str4, Uri uri, long j, long j2, long j3, int i, int i2) {
        this.zzbbM = str;
        this.zzbbN = gameEntity;
        this.zzbbO = str2;
        this.zzbbP = str3;
        this.zzaYf = str4;
        this.zzaXU = uri;
        this.zzbbQ = j;
        this.zzbbR = j2;
        this.zzbbS = j3;
        this.zzamr = i;
        this.zzbbT = i2;
    }

    static int zza(ExperienceEvent experienceEvent) {
        return Arrays.hashCode(new Object[]{experienceEvent.zzuY(), experienceEvent.getGame(), experienceEvent.zzuZ(), experienceEvent.zzva(), experienceEvent.getIconImageUrl(), experienceEvent.getIconImageUri(), Long.valueOf(experienceEvent.zzvb()), Long.valueOf(experienceEvent.zzvc()), Long.valueOf(experienceEvent.zzvd()), Integer.valueOf(experienceEvent.getType()), Integer.valueOf(experienceEvent.zzve())});
    }

    static boolean zza(ExperienceEvent experienceEvent, Object obj) {
        if (!(obj instanceof ExperienceEvent)) {
            return false;
        }
        if (experienceEvent == obj) {
            return true;
        }
        ExperienceEvent experienceEvent2 = (ExperienceEvent) obj;
        return zzbe.equal(experienceEvent2.zzuY(), experienceEvent.zzuY()) && zzbe.equal(experienceEvent2.getGame(), experienceEvent.getGame()) && zzbe.equal(experienceEvent2.zzuZ(), experienceEvent.zzuZ()) && zzbe.equal(experienceEvent2.zzva(), experienceEvent.zzva()) && zzbe.equal(experienceEvent2.getIconImageUrl(), experienceEvent.getIconImageUrl()) && zzbe.equal(experienceEvent2.getIconImageUri(), experienceEvent.getIconImageUri()) && zzbe.equal(Long.valueOf(experienceEvent2.zzvb()), Long.valueOf(experienceEvent.zzvb())) && zzbe.equal(Long.valueOf(experienceEvent2.zzvc()), Long.valueOf(experienceEvent.zzvc())) && zzbe.equal(Long.valueOf(experienceEvent2.zzvd()), Long.valueOf(experienceEvent.zzvd())) && zzbe.equal(Integer.valueOf(experienceEvent2.getType()), Integer.valueOf(experienceEvent.getType())) && zzbe.equal(Integer.valueOf(experienceEvent2.zzve()), Integer.valueOf(experienceEvent.zzve()));
    }

    static String zzb(ExperienceEvent experienceEvent) {
        return zzbe.zzt(experienceEvent).zzg("ExperienceId", experienceEvent.zzuY()).zzg("Game", experienceEvent.getGame()).zzg("DisplayTitle", experienceEvent.zzuZ()).zzg("DisplayDescription", experienceEvent.zzva()).zzg("IconImageUrl", experienceEvent.getIconImageUrl()).zzg("IconImageUri", experienceEvent.getIconImageUri()).zzg("CreatedTimestamp", Long.valueOf(experienceEvent.zzvb())).zzg("XpEarned", Long.valueOf(experienceEvent.zzvc())).zzg("CurrentXp", Long.valueOf(experienceEvent.zzvd())).zzg("Type", Integer.valueOf(experienceEvent.getType())).zzg("NewLevel", Integer.valueOf(experienceEvent.zzve())).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final Game getGame() {
        return this.zzbbN;
    }

    public final Uri getIconImageUri() {
        return this.zzaXU;
    }

    public final String getIconImageUrl() {
        return this.zzaYf;
    }

    public final int getType() {
        return this.zzamr;
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

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbbM, false);
        zzd.zza(parcel, 2, this.zzbbN, i, false);
        zzd.zza(parcel, 3, this.zzbbO, false);
        zzd.zza(parcel, 4, this.zzbbP, false);
        zzd.zza(parcel, 5, getIconImageUrl(), false);
        zzd.zza(parcel, 6, this.zzaXU, i, false);
        zzd.zza(parcel, 7, this.zzbbQ);
        zzd.zza(parcel, 8, this.zzbbR);
        zzd.zza(parcel, 9, this.zzbbS);
        zzd.zzc(parcel, 10, this.zzamr);
        zzd.zzc(parcel, 11, this.zzbbT);
        zzd.zzI(parcel, zze);
    }

    public final String zzuY() {
        return this.zzbbM;
    }

    public final String zzuZ() {
        return this.zzbbO;
    }

    public final String zzva() {
        return this.zzbbP;
    }

    public final long zzvb() {
        return this.zzbbQ;
    }

    public final long zzvc() {
        return this.zzbbR;
    }

    public final long zzvd() {
        return this.zzbbS;
    }

    public final int zzve() {
        return this.zzbbT;
    }
}
