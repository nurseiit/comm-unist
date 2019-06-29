package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.PlayerEntity;

public final class zzf implements Creator<SnapshotMetadataEntity> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        GameEntity gameEntity = null;
        PlayerEntity playerEntity = gameEntity;
        String str = playerEntity;
        Uri uri = str;
        String str2 = uri;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        float f = 0.0f;
        boolean z = false;
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
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    uri = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 10:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 11:
                    f = zzb.zzl(parcel2, readInt);
                    break;
                case 12:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 13:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 14:
                    j3 = zzb.zzi(parcel2, readInt);
                    break;
                case 15:
                    str6 = zzb.zzq(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new SnapshotMetadataEntity(gameEntity, playerEntity, str, uri, str2, str3, str4, j, j2, f, str5, z, j3, str6);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new SnapshotMetadataEntity[i];
    }
}
