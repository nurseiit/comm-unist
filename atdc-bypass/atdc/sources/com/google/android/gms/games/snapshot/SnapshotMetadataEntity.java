package com.google.android.gms.games.snapshot;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.zzc;
import java.util.Arrays;

public final class SnapshotMetadataEntity extends zzc implements SnapshotMetadata {
    public static final Creator<SnapshotMetadataEntity> CREATOR = new zzf();
    private final String zzaZJ;
    private final String zzafa;
    private final String zzaoy;
    private final GameEntity zzbbN;
    private final Uri zzbeC;
    private final PlayerEntity zzbeF;
    private final String zzbeG;
    private final long zzbeH;
    private final long zzbeI;
    private final float zzbeJ;
    private final String zzbeK;
    private final boolean zzbeL;
    private final long zzbeM;
    private final String zzbeN;

    SnapshotMetadataEntity(GameEntity gameEntity, PlayerEntity playerEntity, String str, Uri uri, String str2, String str3, String str4, long j, long j2, float f, String str5, boolean z, long j3, String str6) {
        this.zzbbN = gameEntity;
        this.zzbeF = playerEntity;
        this.zzaZJ = str;
        this.zzbeC = uri;
        this.zzbeG = str2;
        this.zzbeJ = f;
        this.zzaoy = str3;
        this.zzafa = str4;
        this.zzbeH = j;
        this.zzbeI = j2;
        this.zzbeK = str5;
        this.zzbeL = z;
        this.zzbeM = j3;
        this.zzbeN = str6;
    }

    public SnapshotMetadataEntity(SnapshotMetadata snapshotMetadata) {
        this.zzbbN = new GameEntity(snapshotMetadata.getGame());
        this.zzbeF = new PlayerEntity(snapshotMetadata.getOwner());
        this.zzaZJ = snapshotMetadata.getSnapshotId();
        this.zzbeC = snapshotMetadata.getCoverImageUri();
        this.zzbeG = snapshotMetadata.getCoverImageUrl();
        this.zzbeJ = snapshotMetadata.getCoverImageAspectRatio();
        this.zzaoy = snapshotMetadata.getTitle();
        this.zzafa = snapshotMetadata.getDescription();
        this.zzbeH = snapshotMetadata.getLastModifiedTimestamp();
        this.zzbeI = snapshotMetadata.getPlayedTime();
        this.zzbeK = snapshotMetadata.getUniqueName();
        this.zzbeL = snapshotMetadata.hasChangePending();
        this.zzbeM = snapshotMetadata.getProgressValue();
        this.zzbeN = snapshotMetadata.getDeviceName();
    }

    static int zza(SnapshotMetadata snapshotMetadata) {
        return Arrays.hashCode(new Object[]{snapshotMetadata.getGame(), snapshotMetadata.getOwner(), snapshotMetadata.getSnapshotId(), snapshotMetadata.getCoverImageUri(), Float.valueOf(snapshotMetadata.getCoverImageAspectRatio()), snapshotMetadata.getTitle(), snapshotMetadata.getDescription(), Long.valueOf(snapshotMetadata.getLastModifiedTimestamp()), Long.valueOf(snapshotMetadata.getPlayedTime()), snapshotMetadata.getUniqueName(), Boolean.valueOf(snapshotMetadata.hasChangePending()), Long.valueOf(snapshotMetadata.getProgressValue()), snapshotMetadata.getDeviceName()});
    }

    static boolean zza(SnapshotMetadata snapshotMetadata, Object obj) {
        if (!(obj instanceof SnapshotMetadata)) {
            return false;
        }
        if (snapshotMetadata == obj) {
            return true;
        }
        SnapshotMetadata snapshotMetadata2 = (SnapshotMetadata) obj;
        return zzbe.equal(snapshotMetadata2.getGame(), snapshotMetadata.getGame()) && zzbe.equal(snapshotMetadata2.getOwner(), snapshotMetadata.getOwner()) && zzbe.equal(snapshotMetadata2.getSnapshotId(), snapshotMetadata.getSnapshotId()) && zzbe.equal(snapshotMetadata2.getCoverImageUri(), snapshotMetadata.getCoverImageUri()) && zzbe.equal(Float.valueOf(snapshotMetadata2.getCoverImageAspectRatio()), Float.valueOf(snapshotMetadata.getCoverImageAspectRatio())) && zzbe.equal(snapshotMetadata2.getTitle(), snapshotMetadata.getTitle()) && zzbe.equal(snapshotMetadata2.getDescription(), snapshotMetadata.getDescription()) && zzbe.equal(Long.valueOf(snapshotMetadata2.getLastModifiedTimestamp()), Long.valueOf(snapshotMetadata.getLastModifiedTimestamp())) && zzbe.equal(Long.valueOf(snapshotMetadata2.getPlayedTime()), Long.valueOf(snapshotMetadata.getPlayedTime())) && zzbe.equal(snapshotMetadata2.getUniqueName(), snapshotMetadata.getUniqueName()) && zzbe.equal(Boolean.valueOf(snapshotMetadata2.hasChangePending()), Boolean.valueOf(snapshotMetadata.hasChangePending())) && zzbe.equal(Long.valueOf(snapshotMetadata2.getProgressValue()), Long.valueOf(snapshotMetadata.getProgressValue())) && zzbe.equal(snapshotMetadata2.getDeviceName(), snapshotMetadata.getDeviceName());
    }

    static String zzb(SnapshotMetadata snapshotMetadata) {
        return zzbe.zzt(snapshotMetadata).zzg("Game", snapshotMetadata.getGame()).zzg("Owner", snapshotMetadata.getOwner()).zzg("SnapshotId", snapshotMetadata.getSnapshotId()).zzg("CoverImageUri", snapshotMetadata.getCoverImageUri()).zzg("CoverImageUrl", snapshotMetadata.getCoverImageUrl()).zzg("CoverImageAspectRatio", Float.valueOf(snapshotMetadata.getCoverImageAspectRatio())).zzg("Description", snapshotMetadata.getDescription()).zzg("LastModifiedTimestamp", Long.valueOf(snapshotMetadata.getLastModifiedTimestamp())).zzg("PlayedTime", Long.valueOf(snapshotMetadata.getPlayedTime())).zzg("UniqueName", snapshotMetadata.getUniqueName()).zzg("ChangePending", Boolean.valueOf(snapshotMetadata.hasChangePending())).zzg("ProgressValue", Long.valueOf(snapshotMetadata.getProgressValue())).zzg("DeviceName", snapshotMetadata.getDeviceName()).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final SnapshotMetadata freeze() {
        return this;
    }

    public final float getCoverImageAspectRatio() {
        return this.zzbeJ;
    }

    public final Uri getCoverImageUri() {
        return this.zzbeC;
    }

    public final String getCoverImageUrl() {
        return this.zzbeG;
    }

    public final String getDescription() {
        return this.zzafa;
    }

    public final void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzafa, charArrayBuffer);
    }

    public final String getDeviceName() {
        return this.zzbeN;
    }

    public final Game getGame() {
        return this.zzbbN;
    }

    public final long getLastModifiedTimestamp() {
        return this.zzbeH;
    }

    public final Player getOwner() {
        return this.zzbeF;
    }

    public final long getPlayedTime() {
        return this.zzbeI;
    }

    public final long getProgressValue() {
        return this.zzbeM;
    }

    public final String getSnapshotId() {
        return this.zzaZJ;
    }

    public final String getTitle() {
        return this.zzaoy;
    }

    public final String getUniqueName() {
        return this.zzbeK;
    }

    public final boolean hasChangePending() {
        return this.zzbeL;
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
        zzd.zza(parcel, 1, getGame(), i, false);
        zzd.zza(parcel, 2, getOwner(), i, false);
        zzd.zza(parcel, 3, getSnapshotId(), false);
        zzd.zza(parcel, 5, getCoverImageUri(), i, false);
        zzd.zza(parcel, 6, getCoverImageUrl(), false);
        zzd.zza(parcel, 7, this.zzaoy, false);
        zzd.zza(parcel, 8, getDescription(), false);
        zzd.zza(parcel, 9, getLastModifiedTimestamp());
        zzd.zza(parcel, 10, getPlayedTime());
        zzd.zza(parcel, 11, getCoverImageAspectRatio());
        zzd.zza(parcel, 12, getUniqueName(), false);
        zzd.zza(parcel, 13, hasChangePending());
        zzd.zza(parcel, 14, getProgressValue());
        zzd.zza(parcel, 15, getDeviceName(), false);
        zzd.zzI(parcel, zze);
    }
}
