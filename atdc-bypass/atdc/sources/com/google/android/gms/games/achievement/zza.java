package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.PlayerEntity;

public final class zza implements Creator<AchievementEntity> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        String str = null;
        String str2 = str;
        String str3 = str2;
        Uri uri = str3;
        String str4 = uri;
        Uri uri2 = str4;
        String str5 = uri2;
        String str6 = str5;
        PlayerEntity playerEntity = str6;
        String str7 = playerEntity;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 2:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    uri = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 6:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    uri2 = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 8:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 10:
                    str6 = zzb.zzq(parcel2, readInt);
                    break;
                case 11:
                    playerEntity = (PlayerEntity) zzb.zza(parcel2, readInt, PlayerEntity.CREATOR);
                    break;
                case 12:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                case 13:
                    i4 = zzb.zzg(parcel2, readInt);
                    break;
                case 14:
                    str7 = zzb.zzq(parcel2, readInt);
                    break;
                case 15:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 16:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new AchievementEntity(str, i, str2, str3, uri, str4, uri2, str5, i2, str6, playerEntity, i3, i4, str7, j, j2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new AchievementEntity[i];
    }
}
