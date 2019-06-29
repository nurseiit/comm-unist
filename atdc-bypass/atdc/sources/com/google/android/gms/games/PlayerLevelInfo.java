package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.games.internal.zzc;
import java.util.Arrays;

public final class PlayerLevelInfo extends zzc {
    public static final Creator<PlayerLevelInfo> CREATOR = new zzi();
    private final long zzaYV;
    private final long zzaYW;
    private final PlayerLevel zzaYX;
    private final PlayerLevel zzaYY;

    public PlayerLevelInfo(long j, long j2, PlayerLevel playerLevel, PlayerLevel playerLevel2) {
        zzbo.zzae(j != -1);
        zzbo.zzu(playerLevel);
        zzbo.zzu(playerLevel2);
        this.zzaYV = j;
        this.zzaYW = j2;
        this.zzaYX = playerLevel;
        this.zzaYY = playerLevel2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PlayerLevelInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        PlayerLevelInfo playerLevelInfo = (PlayerLevelInfo) obj;
        return zzbe.equal(Long.valueOf(this.zzaYV), Long.valueOf(playerLevelInfo.zzaYV)) && zzbe.equal(Long.valueOf(this.zzaYW), Long.valueOf(playerLevelInfo.zzaYW)) && zzbe.equal(this.zzaYX, playerLevelInfo.zzaYX) && zzbe.equal(this.zzaYY, playerLevelInfo.zzaYY);
    }

    public final PlayerLevel getCurrentLevel() {
        return this.zzaYX;
    }

    public final long getCurrentXpTotal() {
        return this.zzaYV;
    }

    public final long getLastLevelUpTimestamp() {
        return this.zzaYW;
    }

    public final PlayerLevel getNextLevel() {
        return this.zzaYY;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzaYV), Long.valueOf(this.zzaYW), this.zzaYX, this.zzaYY});
    }

    public final boolean isMaxLevel() {
        return this.zzaYX.equals(this.zzaYY);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getCurrentXpTotal());
        zzd.zza(parcel, 2, getLastLevelUpTimestamp());
        zzd.zza(parcel, 3, getCurrentLevel(), i, false);
        zzd.zza(parcel, 4, getNextLevel(), i, false);
        zzd.zzI(parcel, zze);
    }
}
