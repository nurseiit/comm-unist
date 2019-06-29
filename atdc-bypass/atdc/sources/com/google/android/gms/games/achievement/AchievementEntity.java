package com.google.android.gms.games.achievement;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.zzc;
import java.util.Arrays;

public final class AchievementEntity extends zzc implements Achievement {
    public static final Creator<AchievementEntity> CREATOR = new zza();
    private final String mName;
    private final int mState;
    private final String zzaZb;
    private final Uri zzaZc;
    private final String zzaZd;
    private final Uri zzaZe;
    private final String zzaZf;
    private final int zzaZg;
    private final String zzaZh;
    private final PlayerEntity zzaZi;
    private final int zzaZj;
    private final String zzaZk;
    private final long zzaZl;
    private final long zzaZm;
    private final String zzafa;
    private final int zzamr;

    public AchievementEntity(Achievement achievement) {
        this.zzaZb = achievement.getAchievementId();
        this.zzamr = achievement.getType();
        this.mName = achievement.getName();
        this.zzafa = achievement.getDescription();
        this.zzaZc = achievement.getUnlockedImageUri();
        this.zzaZd = achievement.getUnlockedImageUrl();
        this.zzaZe = achievement.getRevealedImageUri();
        this.zzaZf = achievement.getRevealedImageUrl();
        this.zzaZi = (PlayerEntity) achievement.getPlayer().freeze();
        this.mState = achievement.getState();
        this.zzaZl = achievement.getLastUpdatedTimestamp();
        this.zzaZm = achievement.getXpValue();
        if (achievement.getType() == 1) {
            this.zzaZg = achievement.getTotalSteps();
            this.zzaZh = achievement.getFormattedTotalSteps();
            this.zzaZj = achievement.getCurrentSteps();
            this.zzaZk = achievement.getFormattedCurrentSteps();
        } else {
            this.zzaZg = 0;
            this.zzaZh = null;
            this.zzaZj = 0;
            this.zzaZk = null;
        }
        com.google.android.gms.common.internal.zzc.zzr(this.zzaZb);
        com.google.android.gms.common.internal.zzc.zzr(this.zzafa);
    }

    AchievementEntity(String str, int i, String str2, String str3, Uri uri, String str4, Uri uri2, String str5, int i2, String str6, PlayerEntity playerEntity, int i3, int i4, String str7, long j, long j2) {
        this.zzaZb = str;
        this.zzamr = i;
        this.mName = str2;
        this.zzafa = str3;
        this.zzaZc = uri;
        this.zzaZd = str4;
        this.zzaZe = uri2;
        this.zzaZf = str5;
        this.zzaZg = i2;
        this.zzaZh = str6;
        this.zzaZi = playerEntity;
        this.mState = i3;
        this.zzaZj = i4;
        this.zzaZk = str7;
        this.zzaZl = j;
        this.zzaZm = j2;
    }

    static String zza(Achievement achievement) {
        zzbg zzg = zzbe.zzt(achievement).zzg("Id", achievement.getAchievementId()).zzg("Type", Integer.valueOf(achievement.getType())).zzg("Name", achievement.getName()).zzg("Description", achievement.getDescription()).zzg("Player", achievement.getPlayer()).zzg("State", Integer.valueOf(achievement.getState()));
        if (achievement.getType() == 1) {
            zzg.zzg("CurrentSteps", Integer.valueOf(achievement.getCurrentSteps()));
            zzg.zzg("TotalSteps", Integer.valueOf(achievement.getTotalSteps()));
        }
        return zzg.toString();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Achievement) {
            if (this == obj) {
                return true;
            }
            Achievement achievement = (Achievement) obj;
            boolean equal;
            boolean equal2;
            if (getType() == 1) {
                equal = zzbe.equal(Integer.valueOf(achievement.getCurrentSteps()), Integer.valueOf(getCurrentSteps()));
                equal2 = zzbe.equal(Integer.valueOf(achievement.getTotalSteps()), Integer.valueOf(getTotalSteps()));
            } else {
                equal = true;
                equal2 = true;
            }
            if (zzbe.equal(achievement.getAchievementId(), getAchievementId()) && zzbe.equal(achievement.getName(), getName()) && zzbe.equal(Integer.valueOf(achievement.getType()), Integer.valueOf(getType())) && zzbe.equal(achievement.getDescription(), getDescription()) && zzbe.equal(Long.valueOf(achievement.getXpValue()), Long.valueOf(getXpValue())) && zzbe.equal(Integer.valueOf(achievement.getState()), Integer.valueOf(getState())) && zzbe.equal(Long.valueOf(achievement.getLastUpdatedTimestamp()), Long.valueOf(getLastUpdatedTimestamp())) && zzbe.equal(achievement.getPlayer(), getPlayer()) && equal && equal2) {
                return true;
            }
        }
        return false;
    }

    public final Achievement freeze() {
        return this;
    }

    public final String getAchievementId() {
        return this.zzaZb;
    }

    public final int getCurrentSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzc.zzae(z);
        return this.zzaZj;
    }

    public final String getDescription() {
        return this.zzafa;
    }

    public final void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzafa, charArrayBuffer);
    }

    public final String getFormattedCurrentSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzc.zzae(z);
        return this.zzaZk;
    }

    public final void getFormattedCurrentSteps(CharArrayBuffer charArrayBuffer) {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzc.zzae(z);
        zzh.zzb(this.zzaZk, charArrayBuffer);
    }

    public final String getFormattedTotalSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzc.zzae(z);
        return this.zzaZh;
    }

    public final void getFormattedTotalSteps(CharArrayBuffer charArrayBuffer) {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzc.zzae(z);
        zzh.zzb(this.zzaZh, charArrayBuffer);
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

    public final Player getPlayer() {
        return this.zzaZi;
    }

    public final Uri getRevealedImageUri() {
        return this.zzaZe;
    }

    public final String getRevealedImageUrl() {
        return this.zzaZf;
    }

    public final int getState() {
        return this.mState;
    }

    public final int getTotalSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzc.zzae(z);
        return this.zzaZg;
    }

    public final int getType() {
        return this.zzamr;
    }

    public final Uri getUnlockedImageUri() {
        return this.zzaZc;
    }

    public final String getUnlockedImageUrl() {
        return this.zzaZd;
    }

    public final long getXpValue() {
        return this.zzaZm;
    }

    public final int hashCode() {
        int currentSteps;
        int totalSteps;
        if (getType() == 1) {
            currentSteps = getCurrentSteps();
            totalSteps = getTotalSteps();
        } else {
            currentSteps = 0;
            totalSteps = 0;
        }
        return Arrays.hashCode(new Object[]{getAchievementId(), getName(), Integer.valueOf(getType()), getDescription(), Long.valueOf(getXpValue()), Integer.valueOf(getState()), Long.valueOf(getLastUpdatedTimestamp()), getPlayer(), Integer.valueOf(currentSteps), Integer.valueOf(totalSteps)});
    }

    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        return zza(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getAchievementId(), false);
        zzd.zzc(parcel, 2, getType());
        zzd.zza(parcel, 3, getName(), false);
        zzd.zza(parcel, 4, getDescription(), false);
        zzd.zza(parcel, 5, getUnlockedImageUri(), i, false);
        zzd.zza(parcel, 6, getUnlockedImageUrl(), false);
        zzd.zza(parcel, 7, getRevealedImageUri(), i, false);
        zzd.zza(parcel, 8, getRevealedImageUrl(), false);
        zzd.zzc(parcel, 9, this.zzaZg);
        zzd.zza(parcel, 10, this.zzaZh, false);
        zzd.zza(parcel, 11, getPlayer(), i, false);
        zzd.zzc(parcel, 12, getState());
        zzd.zzc(parcel, 13, this.zzaZj);
        zzd.zza(parcel, 14, this.zzaZk, false);
        zzd.zza(parcel, 15, getLastUpdatedTimestamp());
        zzd.zza(parcel, 16, getXpValue());
        zzd.zzI(parcel, zze);
    }
}
