package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.zzc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class QuestEntity extends zzc implements Quest {
    public static final Creator<QuestEntity> CREATOR = new zzc();
    private final String mName;
    private final int mState;
    private final long zzaZl;
    private final String zzafa;
    private final int zzamr;
    private final GameEntity zzbbN;
    private final String zzbei;
    private final long zzbej;
    private final Uri zzbek;
    private final String zzbel;
    private final long zzbem;
    private final Uri zzben;
    private final String zzbeo;
    private final long zzbep;
    private final long zzbeq;
    private final ArrayList<MilestoneEntity> zzber;

    QuestEntity(GameEntity gameEntity, String str, long j, Uri uri, String str2, String str3, long j2, long j3, Uri uri2, String str4, String str5, long j4, long j5, int i, int i2, ArrayList<MilestoneEntity> arrayList) {
        this.zzbbN = gameEntity;
        this.zzbei = str;
        this.zzbej = j;
        this.zzbek = uri;
        this.zzbel = str2;
        this.zzafa = str3;
        this.zzbem = j2;
        this.zzaZl = j3;
        this.zzben = uri2;
        this.zzbeo = str4;
        this.mName = str5;
        this.zzbep = j4;
        this.zzbeq = j5;
        this.mState = i;
        this.zzamr = i2;
        this.zzber = arrayList;
    }

    public QuestEntity(Quest quest) {
        this.zzbbN = new GameEntity(quest.getGame());
        this.zzbei = quest.getQuestId();
        this.zzbej = quest.getAcceptedTimestamp();
        this.zzafa = quest.getDescription();
        this.zzbek = quest.getBannerImageUri();
        this.zzbel = quest.getBannerImageUrl();
        this.zzbem = quest.getEndTimestamp();
        this.zzben = quest.getIconImageUri();
        this.zzbeo = quest.getIconImageUrl();
        this.zzaZl = quest.getLastUpdatedTimestamp();
        this.mName = quest.getName();
        this.zzbep = quest.zzvu();
        this.zzbeq = quest.getStartTimestamp();
        this.mState = quest.getState();
        this.zzamr = quest.getType();
        List zzvt = quest.zzvt();
        int size = zzvt.size();
        this.zzber = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            this.zzber.add((MilestoneEntity) ((Milestone) zzvt.get(i)).freeze());
        }
    }

    static int zza(Quest quest) {
        return Arrays.hashCode(new Object[]{quest.getGame(), quest.getQuestId(), Long.valueOf(quest.getAcceptedTimestamp()), quest.getBannerImageUri(), quest.getDescription(), Long.valueOf(quest.getEndTimestamp()), quest.getIconImageUri(), Long.valueOf(quest.getLastUpdatedTimestamp()), quest.zzvt(), quest.getName(), Long.valueOf(quest.zzvu()), Long.valueOf(quest.getStartTimestamp()), Integer.valueOf(quest.getState())});
    }

    static boolean zza(Quest quest, Object obj) {
        if (!(obj instanceof Quest)) {
            return false;
        }
        if (quest == obj) {
            return true;
        }
        Quest quest2 = (Quest) obj;
        return zzbe.equal(quest2.getGame(), quest.getGame()) && zzbe.equal(quest2.getQuestId(), quest.getQuestId()) && zzbe.equal(Long.valueOf(quest2.getAcceptedTimestamp()), Long.valueOf(quest.getAcceptedTimestamp())) && zzbe.equal(quest2.getBannerImageUri(), quest.getBannerImageUri()) && zzbe.equal(quest2.getDescription(), quest.getDescription()) && zzbe.equal(Long.valueOf(quest2.getEndTimestamp()), Long.valueOf(quest.getEndTimestamp())) && zzbe.equal(quest2.getIconImageUri(), quest.getIconImageUri()) && zzbe.equal(Long.valueOf(quest2.getLastUpdatedTimestamp()), Long.valueOf(quest.getLastUpdatedTimestamp())) && zzbe.equal(quest2.zzvt(), quest.zzvt()) && zzbe.equal(quest2.getName(), quest.getName()) && zzbe.equal(Long.valueOf(quest2.zzvu()), Long.valueOf(quest.zzvu())) && zzbe.equal(Long.valueOf(quest2.getStartTimestamp()), Long.valueOf(quest.getStartTimestamp())) && zzbe.equal(Integer.valueOf(quest2.getState()), Integer.valueOf(quest.getState()));
    }

    static String zzb(Quest quest) {
        return zzbe.zzt(quest).zzg("Game", quest.getGame()).zzg("QuestId", quest.getQuestId()).zzg("AcceptedTimestamp", Long.valueOf(quest.getAcceptedTimestamp())).zzg("BannerImageUri", quest.getBannerImageUri()).zzg("BannerImageUrl", quest.getBannerImageUrl()).zzg("Description", quest.getDescription()).zzg("EndTimestamp", Long.valueOf(quest.getEndTimestamp())).zzg("IconImageUri", quest.getIconImageUri()).zzg("IconImageUrl", quest.getIconImageUrl()).zzg("LastUpdatedTimestamp", Long.valueOf(quest.getLastUpdatedTimestamp())).zzg("Milestones", quest.zzvt()).zzg("Name", quest.getName()).zzg("NotifyTimestamp", Long.valueOf(quest.zzvu())).zzg("StartTimestamp", Long.valueOf(quest.getStartTimestamp())).zzg("State", Integer.valueOf(quest.getState())).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final Quest freeze() {
        return this;
    }

    public final long getAcceptedTimestamp() {
        return this.zzbej;
    }

    public final Uri getBannerImageUri() {
        return this.zzbek;
    }

    public final String getBannerImageUrl() {
        return this.zzbel;
    }

    public final Milestone getCurrentMilestone() {
        return (Milestone) zzvt().get(0);
    }

    public final String getDescription() {
        return this.zzafa;
    }

    public final void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzafa, charArrayBuffer);
    }

    public final long getEndTimestamp() {
        return this.zzbem;
    }

    public final Game getGame() {
        return this.zzbbN;
    }

    public final Uri getIconImageUri() {
        return this.zzben;
    }

    public final String getIconImageUrl() {
        return this.zzbeo;
    }

    public final long getLastUpdatedTimestamp() {
        return this.zzaZl;
    }

    public final String getName() {
        return this.mName;
    }

    public final void getName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.mName, charArrayBuffer);
    }

    public final String getQuestId() {
        return this.zzbei;
    }

    public final long getStartTimestamp() {
        return this.zzbeq;
    }

    public final int getState() {
        return this.mState;
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

    public final boolean isEndingSoon() {
        return this.zzbep <= System.currentTimeMillis() + 1800000;
    }

    public final String toString() {
        return zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getGame(), i, false);
        zzd.zza(parcel, 2, getQuestId(), false);
        zzd.zza(parcel, 3, getAcceptedTimestamp());
        zzd.zza(parcel, 4, getBannerImageUri(), i, false);
        zzd.zza(parcel, 5, getBannerImageUrl(), false);
        zzd.zza(parcel, 6, getDescription(), false);
        zzd.zza(parcel, 7, getEndTimestamp());
        zzd.zza(parcel, 8, getLastUpdatedTimestamp());
        zzd.zza(parcel, 9, getIconImageUri(), i, false);
        zzd.zza(parcel, 10, getIconImageUrl(), false);
        zzd.zza(parcel, 12, getName(), false);
        zzd.zza(parcel, 13, this.zzbep);
        zzd.zza(parcel, 14, getStartTimestamp());
        zzd.zzc(parcel, 15, getState());
        zzd.zzc(parcel, 16, this.zzamr);
        zzd.zzc(parcel, 17, zzvt(), false);
        zzd.zzI(parcel, zze);
    }

    public final List<Milestone> zzvt() {
        return new ArrayList(this.zzber);
    }

    public final long zzvu() {
        return this.zzbep;
    }
}
