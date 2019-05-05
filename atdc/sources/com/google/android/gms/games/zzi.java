package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzi implements Creator<PlayerLevelInfo> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        PlayerLevel playerLevel = null;
        PlayerLevel playerLevel2 = playerLevel;
        long j = 0;
        long j2 = j;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    j = zzb.zzi(parcel, readInt);
                    break;
                case 2:
                    j2 = zzb.zzi(parcel, readInt);
                    break;
                case 3:
                    playerLevel = (PlayerLevel) zzb.zza(parcel, readInt, PlayerLevel.CREATOR);
                    break;
                case 4:
                    playerLevel2 = (PlayerLevel) zzb.zza(parcel, readInt, PlayerLevel.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new PlayerLevelInfo(j, j2, playerLevel, playerLevel2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new PlayerLevelInfo[i];
    }
}
