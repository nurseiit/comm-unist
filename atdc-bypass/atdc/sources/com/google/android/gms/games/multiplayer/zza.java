package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;

public class zza implements Creator<InvitationEntity> {
    public /* synthetic */ Object[] newArray(int i) {
        return new InvitationEntity[i];
    }

    /* renamed from: zzh */
    public InvitationEntity createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        GameEntity gameEntity = null;
        String str = gameEntity;
        ParticipantEntity participantEntity = str;
        ArrayList arrayList = participantEntity;
        long j = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
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
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 5:
                    participantEntity = (ParticipantEntity) zzb.zza(parcel2, readInt, ParticipantEntity.CREATOR);
                    break;
                case 6:
                    arrayList = zzb.zzc(parcel2, readInt, ParticipantEntity.CREATOR);
                    break;
                case 7:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 8:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new InvitationEntity(gameEntity, str, j, i, participantEntity, arrayList, i2, i3);
    }
}
