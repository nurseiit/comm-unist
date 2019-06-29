package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.PlayerEntity;
import java.util.ArrayList;

public final class zza implements Creator<GameRequestEntity> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        GameEntity gameEntity = null;
        PlayerEntity playerEntity = gameEntity;
        byte[] bArr = playerEntity;
        String str = bArr;
        ArrayList arrayList = str;
        Bundle bundle = arrayList;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    gameEntity = (GameEntity) zzb.zza(parcel2, readInt, GameEntity.CREATOR);
                    break;
                case 2:
                    playerEntity = (PlayerEntity) zzb.zza(parcel2, readInt, PlayerEntity.CREATOR);
                    break;
                case 3:
                    bArr = zzb.zzt(parcel2, readInt);
                    break;
                case 4:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    arrayList = zzb.zzc(parcel2, readInt, PlayerEntity.CREATOR);
                    break;
                case 7:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 9:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 10:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 11:
                    bundle = zzb.zzs(parcel2, readInt);
                    break;
                case 12:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new GameRequestEntity(gameEntity, playerEntity, bArr, str, arrayList, i, j, j2, bundle, i2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new GameRequestEntity[i];
    }
}
