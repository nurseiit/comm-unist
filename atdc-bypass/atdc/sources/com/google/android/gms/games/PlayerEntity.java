package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzc;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.player.zzb;
import java.util.Arrays;

public final class PlayerEntity extends GamesDowngradeableSafeParcel implements Player {
    public static final Creator<PlayerEntity> CREATOR = new zza();
    private final String mName;
    private final Uri zzaXU;
    private final Uri zzaXV;
    private final long zzaYE;
    private final int zzaYF;
    private final long zzaYG;
    private final zzb zzaYH;
    private final PlayerLevelInfo zzaYI;
    private final boolean zzaYJ;
    private final boolean zzaYK;
    private final String zzaYL;
    private final Uri zzaYM;
    private final String zzaYN;
    private final Uri zzaYO;
    private final String zzaYP;
    private final int zzaYQ;
    private final long zzaYR;
    private final String zzaYf;
    private final String zzaYg;
    private final boolean zzacy;
    private String zzalP;
    private final String zzaoy;
    private String zzaxn;

    static final class zza extends zzg {
        zza() {
        }

        /* renamed from: zzg */
        public final PlayerEntity createFromParcel(Parcel parcel) {
            if (GamesDowngradeableSafeParcel.zze(DowngradeableSafeParcel.zzrx()) || DowngradeableSafeParcel.zzcA(PlayerEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            return new PlayerEntity(readString, readString2, readString3 == null ? null : Uri.parse(readString3), readString4 == null ? null : Uri.parse(readString4), parcel.readLong(), -1, -1, null, null, null, null, null, true, false, parcel.readString(), parcel.readString(), null, null, null, null, -1, -1, false);
        }
    }

    public PlayerEntity(Player player) {
        this(player, true);
    }

    private PlayerEntity(Player player, boolean z) {
        this.zzaxn = player.getPlayerId();
        this.zzalP = player.getDisplayName();
        this.zzaXU = player.getIconImageUri();
        this.zzaYf = player.getIconImageUrl();
        this.zzaXV = player.getHiResImageUri();
        this.zzaYg = player.getHiResImageUrl();
        this.zzaYE = player.getRetrievedTimestamp();
        this.zzaYF = player.zzul();
        this.zzaYG = player.getLastPlayedWithTimestamp();
        this.zzaoy = player.getTitle();
        this.zzaYJ = player.zzum();
        com.google.android.gms.games.internal.player.zza zzun = player.zzun();
        this.zzaYH = zzun == null ? null : new zzb(zzun);
        this.zzaYI = player.getLevelInfo();
        this.zzaYK = player.zzuk();
        this.zzaYL = player.zzuj();
        this.mName = player.getName();
        this.zzaYM = player.getBannerImageLandscapeUri();
        this.zzaYN = player.getBannerImageLandscapeUrl();
        this.zzaYO = player.getBannerImagePortraitUri();
        this.zzaYP = player.getBannerImagePortraitUrl();
        this.zzaYQ = player.zzuo();
        this.zzaYR = player.zzup();
        this.zzacy = player.isMuted();
        zzc.zzr(this.zzaxn);
        zzc.zzr(this.zzalP);
        zzc.zzae(this.zzaYE > 0);
    }

    PlayerEntity(String str, String str2, Uri uri, Uri uri2, long j, int i, long j2, String str3, String str4, String str5, zzb zzb, PlayerLevelInfo playerLevelInfo, boolean z, boolean z2, String str6, String str7, Uri uri3, String str8, Uri uri4, String str9, int i2, long j3, boolean z3) {
        this.zzaxn = str;
        this.zzalP = str2;
        this.zzaXU = uri;
        this.zzaYf = str3;
        this.zzaXV = uri2;
        this.zzaYg = str4;
        this.zzaYE = j;
        this.zzaYF = i;
        this.zzaYG = j2;
        this.zzaoy = str5;
        this.zzaYJ = z;
        this.zzaYH = zzb;
        this.zzaYI = playerLevelInfo;
        this.zzaYK = z2;
        this.zzaYL = str6;
        this.mName = str7;
        this.zzaYM = uri3;
        this.zzaYN = str8;
        this.zzaYO = uri4;
        this.zzaYP = str9;
        this.zzaYQ = i2;
        this.zzaYR = j3;
        this.zzacy = z3;
    }

    static int zza(Player player) {
        return Arrays.hashCode(new Object[]{player.getPlayerId(), player.getDisplayName(), Boolean.valueOf(player.zzuk()), player.getIconImageUri(), player.getHiResImageUri(), Long.valueOf(player.getRetrievedTimestamp()), player.getTitle(), player.getLevelInfo(), player.zzuj(), player.getName(), player.getBannerImageLandscapeUri(), player.getBannerImagePortraitUri(), Integer.valueOf(player.zzuo()), Long.valueOf(player.zzup()), Boolean.valueOf(player.isMuted())});
    }

    static boolean zza(Player player, Object obj) {
        if (!(obj instanceof Player)) {
            return false;
        }
        if (player == obj) {
            return true;
        }
        Player player2 = (Player) obj;
        return zzbe.equal(player2.getPlayerId(), player.getPlayerId()) && zzbe.equal(player2.getDisplayName(), player.getDisplayName()) && zzbe.equal(Boolean.valueOf(player2.zzuk()), Boolean.valueOf(player.zzuk())) && zzbe.equal(player2.getIconImageUri(), player.getIconImageUri()) && zzbe.equal(player2.getHiResImageUri(), player.getHiResImageUri()) && zzbe.equal(Long.valueOf(player2.getRetrievedTimestamp()), Long.valueOf(player.getRetrievedTimestamp())) && zzbe.equal(player2.getTitle(), player.getTitle()) && zzbe.equal(player2.getLevelInfo(), player.getLevelInfo()) && zzbe.equal(player2.zzuj(), player.zzuj()) && zzbe.equal(player2.getName(), player.getName()) && zzbe.equal(player2.getBannerImageLandscapeUri(), player.getBannerImageLandscapeUri()) && zzbe.equal(player2.getBannerImagePortraitUri(), player.getBannerImagePortraitUri()) && zzbe.equal(Integer.valueOf(player2.zzuo()), Integer.valueOf(player.zzuo())) && zzbe.equal(Long.valueOf(player2.zzup()), Long.valueOf(player.zzup())) && zzbe.equal(Boolean.valueOf(player2.isMuted()), Boolean.valueOf(player.isMuted()));
    }

    static String zzb(Player player) {
        return zzbe.zzt(player).zzg("PlayerId", player.getPlayerId()).zzg("DisplayName", player.getDisplayName()).zzg("HasDebugAccess", Boolean.valueOf(player.zzuk())).zzg("IconImageUri", player.getIconImageUri()).zzg("IconImageUrl", player.getIconImageUrl()).zzg("HiResImageUri", player.getHiResImageUri()).zzg("HiResImageUrl", player.getHiResImageUrl()).zzg("RetrievedTimestamp", Long.valueOf(player.getRetrievedTimestamp())).zzg("Title", player.getTitle()).zzg("LevelInfo", player.getLevelInfo()).zzg("GamerTag", player.zzuj()).zzg("Name", player.getName()).zzg("BannerImageLandscapeUri", player.getBannerImageLandscapeUri()).zzg("BannerImageLandscapeUrl", player.getBannerImageLandscapeUrl()).zzg("BannerImagePortraitUri", player.getBannerImagePortraitUri()).zzg("BannerImagePortraitUrl", player.getBannerImagePortraitUrl()).zzg("GamerFriendStatus", Integer.valueOf(player.zzuo())).zzg("GamerFriendUpdateTimestamp", Long.valueOf(player.zzup())).zzg("IsMuted", Boolean.valueOf(player.isMuted())).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final Player freeze() {
        return this;
    }

    public final Uri getBannerImageLandscapeUri() {
        return this.zzaYM;
    }

    public final String getBannerImageLandscapeUrl() {
        return this.zzaYN;
    }

    public final Uri getBannerImagePortraitUri() {
        return this.zzaYO;
    }

    public final String getBannerImagePortraitUrl() {
        return this.zzaYP;
    }

    public final String getDisplayName() {
        return this.zzalP;
    }

    public final void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzalP, charArrayBuffer);
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

    public final long getLastPlayedWithTimestamp() {
        return this.zzaYG;
    }

    public final PlayerLevelInfo getLevelInfo() {
        return this.zzaYI;
    }

    public final String getName() {
        return this.mName;
    }

    public final String getPlayerId() {
        return this.zzaxn;
    }

    public final long getRetrievedTimestamp() {
        return this.zzaYE;
    }

    public final String getTitle() {
        return this.zzaoy;
    }

    public final void getTitle(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzaoy, charArrayBuffer);
    }

    public final boolean hasHiResImage() {
        return getHiResImageUri() != null;
    }

    public final boolean hasIconImage() {
        return getIconImageUri() != null;
    }

    public final int hashCode() {
        return zza(this);
    }

    public final boolean isDataValid() {
        return true;
    }

    public final boolean isMuted() {
        return this.zzacy;
    }

    public final String toString() {
        return zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getPlayerId(), false);
        zzd.zza(parcel, 2, getDisplayName(), false);
        zzd.zza(parcel, 3, getIconImageUri(), i, false);
        zzd.zza(parcel, 4, getHiResImageUri(), i, false);
        zzd.zza(parcel, 5, getRetrievedTimestamp());
        zzd.zzc(parcel, 6, this.zzaYF);
        zzd.zza(parcel, 7, getLastPlayedWithTimestamp());
        zzd.zza(parcel, 8, getIconImageUrl(), false);
        zzd.zza(parcel, 9, getHiResImageUrl(), false);
        zzd.zza(parcel, 14, getTitle(), false);
        zzd.zza(parcel, 15, this.zzaYH, i, false);
        zzd.zza(parcel, 16, getLevelInfo(), i, false);
        zzd.zza(parcel, 18, this.zzaYJ);
        zzd.zza(parcel, 19, this.zzaYK);
        zzd.zza(parcel, 20, this.zzaYL, false);
        zzd.zza(parcel, 21, this.mName, false);
        zzd.zza(parcel, 22, getBannerImageLandscapeUri(), i, false);
        zzd.zza(parcel, 23, getBannerImageLandscapeUrl(), false);
        zzd.zza(parcel, 24, getBannerImagePortraitUri(), i, false);
        zzd.zza(parcel, 25, getBannerImagePortraitUrl(), false);
        zzd.zzc(parcel, 26, this.zzaYQ);
        zzd.zza(parcel, 27, this.zzaYR);
        zzd.zza(parcel, 28, this.zzacy);
        zzd.zzI(parcel, zze);
    }

    public final String zzuj() {
        return this.zzaYL;
    }

    public final boolean zzuk() {
        return this.zzaYK;
    }

    public final int zzul() {
        return this.zzaYF;
    }

    public final boolean zzum() {
        return this.zzaYJ;
    }

    public final com.google.android.gms.games.internal.player.zza zzun() {
        return this.zzaYH;
    }

    public final int zzuo() {
        return this.zzaYQ;
    }

    public final long zzup() {
        return this.zzaYR;
    }
}
