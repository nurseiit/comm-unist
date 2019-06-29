package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.GameEntity;

public final class zza implements Creator<ExperienceEventEntity> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        String str = null;
        GameEntity gameEntity = str;
        String str2 = gameEntity;
        String str3 = str2;
        String str4 = str3;
        Uri uri = str4;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 2:
                    gameEntity = (GameEntity) zzb.zza(parcel2, readInt, GameEntity.CREATOR);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    uri = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 7:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 8:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 9:
                    j3 = zzb.zzi(parcel2, readInt);
                    break;
                case 10:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 11:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new ExperienceEventEntity(str, gameEntity, str2, str3, str4, uri, j, j2, j3, i, i2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new ExperienceEventEntity[i];
    }
}
