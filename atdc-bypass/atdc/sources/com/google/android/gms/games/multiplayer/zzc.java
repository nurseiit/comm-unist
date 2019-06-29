package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.PlayerEntity;

public class zzc implements Creator<ParticipantEntity> {
    public /* synthetic */ Object[] newArray(int i) {
        return new ParticipantEntity[i];
    }

    /* renamed from: zzi */
    public ParticipantEntity createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        Uri uri = str2;
        Uri uri2 = uri;
        String str3 = uri2;
        PlayerEntity playerEntity = str3;
        ParticipantResult participantResult = playerEntity;
        String str4 = participantResult;
        String str5 = str4;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 2:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    uri = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 4:
                    uri2 = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 5:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 6:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 8:
                    playerEntity = (PlayerEntity) zzb.zza(parcel2, readInt, PlayerEntity.CREATOR);
                    break;
                case 9:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 10:
                    participantResult = (ParticipantResult) zzb.zza(parcel2, readInt, ParticipantResult.CREATOR);
                    break;
                case 11:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 12:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new ParticipantEntity(str, str2, uri, uri2, i, str3, z, playerEntity, i2, participantResult, str4, str5);
    }
}
