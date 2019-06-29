package com.google.android.gms.games.quest;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;

public final class zzc implements Creator<QuestEntity> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        long j4 = j3;
        long j5 = j4;
        GameEntity gameEntity = null;
        String str = gameEntity;
        Uri uri = str;
        String str2 = uri;
        String str3 = str2;
        Uri uri2 = str3;
        String str4 = uri2;
        String str5 = str4;
        ArrayList arrayList = str5;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    gameEntity = (GameEntity) zzb.zza(parcel2, readInt, GameEntity.CREATOR);
                    break;
                case 2:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 4:
                    uri = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 5:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 8:
                    j3 = zzb.zzi(parcel2, readInt);
                    break;
                case 9:
                    uri2 = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 10:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 12:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 13:
                    j4 = zzb.zzi(parcel2, readInt);
                    break;
                case 14:
                    j5 = zzb.zzi(parcel2, readInt);
                    break;
                case 15:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 16:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 17:
                    arrayList = zzb.zzc(parcel2, readInt, MilestoneEntity.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new QuestEntity(gameEntity, str, j, uri, str2, str3, j2, j3, uri2, str4, str5, j4, j5, i, i2, arrayList);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new QuestEntity[i];
    }
}
