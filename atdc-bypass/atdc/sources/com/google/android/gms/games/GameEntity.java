package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import java.util.Arrays;

public final class GameEntity extends GamesDowngradeableSafeParcel implements Game {
    public static final Creator<GameEntity> CREATOR = new zza();
    private final boolean zzQN;
    private final String zzaXR;
    private final String zzaXS;
    private final String zzaXT;
    private final Uri zzaXU;
    private final Uri zzaXV;
    private final Uri zzaXW;
    private final boolean zzaXX;
    private final boolean zzaXY;
    private final String zzaXZ;
    private final int zzaYa;
    private final int zzaYb;
    private final int zzaYc;
    private final boolean zzaYd;
    private final boolean zzaYe;
    private final String zzaYf;
    private final String zzaYg;
    private final String zzaYh;
    private final boolean zzaYi;
    private final boolean zzaYj;
    private final String zzaYk;
    private final boolean zzaYl;
    private final String zzafa;
    private final String zzalP;
    private final String zzaoM;

    static final class zza extends zza {
        zza() {
        }

        /* renamed from: zzf */
        public final GameEntity createFromParcel(Parcel parcel) {
            if (GamesDowngradeableSafeParcel.zze(DowngradeableSafeParcel.zzrx()) || DowngradeableSafeParcel.zzcA(GameEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            String readString6 = parcel.readString();
            String readString7 = parcel.readString();
            Uri parse = readString7 == null ? null : Uri.parse(readString7);
            readString7 = parcel.readString();
            Uri parse2 = readString7 == null ? null : Uri.parse(readString7);
            readString7 = parcel.readString();
            return new GameEntity(readString, readString2, readString3, readString4, readString5, readString6, parse, parse2, readString7 == null ? null : Uri.parse(readString7), parcel.readInt() > 0, parcel.readInt() > 0, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false, false, null, null, null, false, false, false, null, false);
        }
    }

    public GameEntity(Game game) {
        this.zzaoM = game.getApplicationId();
        this.zzaXR = game.getPrimaryCategory();
        this.zzaXS = game.getSecondaryCategory();
        this.zzafa = game.getDescription();
        this.zzaXT = game.getDeveloperName();
        this.zzalP = game.getDisplayName();
        this.zzaXU = game.getIconImageUri();
        this.zzaYf = game.getIconImageUrl();
        this.zzaXV = game.getHiResImageUri();
        this.zzaYg = game.getHiResImageUrl();
        this.zzaXW = game.getFeaturedImageUri();
        this.zzaYh = game.getFeaturedImageUrl();
        this.zzaXX = game.zzud();
        this.zzaXY = game.zzuf();
        this.zzaXZ = game.zzug();
        this.zzaYa = 1;
        this.zzaYb = game.getAchievementTotalCount();
        this.zzaYc = game.getLeaderboardCount();
        this.zzaYd = game.isRealTimeMultiplayerEnabled();
        this.zzaYe = game.isTurnBasedMultiplayerEnabled();
        this.zzQN = game.isMuted();
        this.zzaYi = game.zzue();
        this.zzaYj = game.areSnapshotsEnabled();
        this.zzaYk = game.getThemeColor();
        this.zzaYl = game.hasGamepadSupport();
    }

    GameEntity(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Uri uri2, Uri uri3, boolean z, boolean z2, String str7, int i, int i2, int i3, boolean z3, boolean z4, String str8, String str9, String str10, boolean z5, boolean z6, boolean z7, String str11, boolean z8) {
        this.zzaoM = str;
        this.zzalP = str2;
        this.zzaXR = str3;
        this.zzaXS = str4;
        this.zzafa = str5;
        this.zzaXT = str6;
        this.zzaXU = uri;
        this.zzaYf = str8;
        this.zzaXV = uri2;
        this.zzaYg = str9;
        this.zzaXW = uri3;
        this.zzaYh = str10;
        this.zzaXX = z;
        this.zzaXY = z2;
        this.zzaXZ = str7;
        this.zzaYa = i;
        this.zzaYb = i2;
        this.zzaYc = i3;
        this.zzaYd = z3;
        this.zzaYe = z4;
        this.zzQN = z5;
        this.zzaYi = z6;
        this.zzaYj = z7;
        this.zzaYk = str11;
        this.zzaYl = z8;
    }

    static int zza(Game game) {
        return Arrays.hashCode(new Object[]{game.getApplicationId(), game.getDisplayName(), game.getPrimaryCategory(), game.getSecondaryCategory(), game.getDescription(), game.getDeveloperName(), game.getIconImageUri(), game.getHiResImageUri(), game.getFeaturedImageUri(), Boolean.valueOf(game.zzud()), Boolean.valueOf(game.zzuf()), game.zzug(), Integer.valueOf(game.getAchievementTotalCount()), Integer.valueOf(game.getLeaderboardCount()), Boolean.valueOf(game.isRealTimeMultiplayerEnabled()), Boolean.valueOf(game.isTurnBasedMultiplayerEnabled()), Boolean.valueOf(game.isMuted()), Boolean.valueOf(game.zzue()), Boolean.valueOf(game.areSnapshotsEnabled()), game.getThemeColor(), Boolean.valueOf(game.hasGamepadSupport())});
    }

    static boolean zza(Game game, Object obj) {
        if (!(obj instanceof Game)) {
            return false;
        }
        if (game == obj) {
            return true;
        }
        Game game2 = (Game) obj;
        if (zzbe.equal(game2.getApplicationId(), game.getApplicationId()) && zzbe.equal(game2.getDisplayName(), game.getDisplayName()) && zzbe.equal(game2.getPrimaryCategory(), game.getPrimaryCategory()) && zzbe.equal(game2.getSecondaryCategory(), game.getSecondaryCategory()) && zzbe.equal(game2.getDescription(), game.getDescription()) && zzbe.equal(game2.getDeveloperName(), game.getDeveloperName()) && zzbe.equal(game2.getIconImageUri(), game.getIconImageUri()) && zzbe.equal(game2.getHiResImageUri(), game.getHiResImageUri()) && zzbe.equal(game2.getFeaturedImageUri(), game.getFeaturedImageUri()) && zzbe.equal(Boolean.valueOf(game2.zzud()), Boolean.valueOf(game.zzud())) && zzbe.equal(Boolean.valueOf(game2.zzuf()), Boolean.valueOf(game.zzuf())) && zzbe.equal(game2.zzug(), game.zzug()) && zzbe.equal(Integer.valueOf(game2.getAchievementTotalCount()), Integer.valueOf(game.getAchievementTotalCount())) && zzbe.equal(Integer.valueOf(game2.getLeaderboardCount()), Integer.valueOf(game.getLeaderboardCount())) && zzbe.equal(Boolean.valueOf(game2.isRealTimeMultiplayerEnabled()), Boolean.valueOf(game.isRealTimeMultiplayerEnabled()))) {
            Boolean valueOf = Boolean.valueOf(game2.isTurnBasedMultiplayerEnabled());
            boolean z = game.isTurnBasedMultiplayerEnabled() && zzbe.equal(Boolean.valueOf(game2.isMuted()), Boolean.valueOf(game.isMuted())) && zzbe.equal(Boolean.valueOf(game2.zzue()), Boolean.valueOf(game.zzue()));
            return zzbe.equal(valueOf, Boolean.valueOf(z)) && zzbe.equal(Boolean.valueOf(game2.areSnapshotsEnabled()), Boolean.valueOf(game.areSnapshotsEnabled())) && zzbe.equal(game2.getThemeColor(), game.getThemeColor()) && zzbe.equal(Boolean.valueOf(game2.hasGamepadSupport()), Boolean.valueOf(game.hasGamepadSupport()));
        }
    }

    static String zzb(Game game) {
        return zzbe.zzt(game).zzg("ApplicationId", game.getApplicationId()).zzg("DisplayName", game.getDisplayName()).zzg("PrimaryCategory", game.getPrimaryCategory()).zzg("SecondaryCategory", game.getSecondaryCategory()).zzg("Description", game.getDescription()).zzg("DeveloperName", game.getDeveloperName()).zzg("IconImageUri", game.getIconImageUri()).zzg("IconImageUrl", game.getIconImageUrl()).zzg("HiResImageUri", game.getHiResImageUri()).zzg("HiResImageUrl", game.getHiResImageUrl()).zzg("FeaturedImageUri", game.getFeaturedImageUri()).zzg("FeaturedImageUrl", game.getFeaturedImageUrl()).zzg("PlayEnabledGame", Boolean.valueOf(game.zzud())).zzg("InstanceInstalled", Boolean.valueOf(game.zzuf())).zzg("InstancePackageName", game.zzug()).zzg("AchievementTotalCount", Integer.valueOf(game.getAchievementTotalCount())).zzg("LeaderboardCount", Integer.valueOf(game.getLeaderboardCount())).zzg("RealTimeMultiplayerEnabled", Boolean.valueOf(game.isRealTimeMultiplayerEnabled())).zzg("TurnBasedMultiplayerEnabled", Boolean.valueOf(game.isTurnBasedMultiplayerEnabled())).zzg("AreSnapshotsEnabled", Boolean.valueOf(game.areSnapshotsEnabled())).zzg("ThemeColor", game.getThemeColor()).zzg("HasGamepadSupport", Boolean.valueOf(game.hasGamepadSupport())).toString();
    }

    public final boolean areSnapshotsEnabled() {
        return this.zzaYj;
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final Game freeze() {
        return this;
    }

    public final int getAchievementTotalCount() {
        return this.zzaYb;
    }

    public final String getApplicationId() {
        return this.zzaoM;
    }

    public final String getDescription() {
        return this.zzafa;
    }

    public final void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzafa, charArrayBuffer);
    }

    public final String getDeveloperName() {
        return this.zzaXT;
    }

    public final void getDeveloperName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzaXT, charArrayBuffer);
    }

    public final String getDisplayName() {
        return this.zzalP;
    }

    public final void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzalP, charArrayBuffer);
    }

    public final Uri getFeaturedImageUri() {
        return this.zzaXW;
    }

    public final String getFeaturedImageUrl() {
        return this.zzaYh;
    }

    public final Uri getHiResImageUri() {
        return this.zzaXV;
    }

    public final String getHiResImageUrl() {
        return this.zzaYg;
    }

    public final Uri getIconImageUri() {
        return this.zzaXU;
    }

    public final String getIconImageUrl() {
        return this.zzaYf;
    }

    public final int getLeaderboardCount() {
        return this.zzaYc;
    }

    public final String getPrimaryCategory() {
        return this.zzaXR;
    }

    public final String getSecondaryCategory() {
        return this.zzaXS;
    }

    public final String getThemeColor() {
        return this.zzaYk;
    }

    public final boolean hasGamepadSupport() {
        return this.zzaYl;
    }

    public final int hashCode() {
        return zza(this);
    }

    public final boolean isDataValid() {
        return true;
    }

    public final boolean isMuted() {
        return this.zzQN;
    }

    public final boolean isRealTimeMultiplayerEnabled() {
        return this.zzaYd;
    }

    public final boolean isTurnBasedMultiplayerEnabled() {
        return this.zzaYe;
    }

    public final String toString() {
        return zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getApplicationId(), false);
        zzd.zza(parcel, 2, getDisplayName(), false);
        zzd.zza(parcel, 3, getPrimaryCategory(), false);
        zzd.zza(parcel, 4, getSecondaryCategory(), false);
        zzd.zza(parcel, 5, getDescription(), false);
        zzd.zza(parcel, 6, getDeveloperName(), false);
        zzd.zza(parcel, 7, getIconImageUri(), i, false);
        zzd.zza(parcel, 8, getHiResImageUri(), i, false);
        zzd.zza(parcel, 9, getFeaturedImageUri(), i, false);
        zzd.zza(parcel, 10, this.zzaXX);
        zzd.zza(parcel, 11, this.zzaXY);
        zzd.zza(parcel, 12, this.zzaXZ, false);
        zzd.zzc(parcel, 13, this.zzaYa);
        zzd.zzc(parcel, 14, getAchievementTotalCount());
        zzd.zzc(parcel, 15, getLeaderboardCount());
        zzd.zza(parcel, 16, isRealTimeMultiplayerEnabled());
        zzd.zza(parcel, 17, isTurnBasedMultiplayerEnabled());
        zzd.zza(parcel, 18, getIconImageUrl(), false);
        zzd.zza(parcel, 19, getHiResImageUrl(), false);
        zzd.zza(parcel, 20, getFeaturedImageUrl(), false);
        zzd.zza(parcel, 21, this.zzQN);
        zzd.zza(parcel, 22, this.zzaYi);
        zzd.zza(parcel, 23, areSnapshotsEnabled());
        zzd.zza(parcel, 24, getThemeColor(), false);
        zzd.zza(parcel, 25, hasGamepadSupport());
        zzd.zzI(parcel, zze);
    }

    public final boolean zzud() {
        return this.zzaXX;
    }

    public final boolean zzue() {
        return this.zzaYi;
    }

    public final boolean zzuf() {
        return this.zzaXY;
    }

    public final String zzug() {
        return this.zzaXZ;
    }
}
