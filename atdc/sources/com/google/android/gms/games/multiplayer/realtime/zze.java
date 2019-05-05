package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;

public class zze implements Creator<RoomEntity> {
    public /* synthetic */ Object[] newArray(int i) {
        return new RoomEntity[i];
    }

    /* renamed from: zzj */
    public RoomEntity createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        Bundle bundle = str3;
        ArrayList arrayList = bundle;
        long j = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
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
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 4:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 5:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 7:
                    bundle = zzb.zzs(parcel2, readInt);
                    break;
                case 8:
                    arrayList = zzb.zzc(parcel2, readInt, ParticipantEntity.CREATOR);
                    break;
                case 9:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new RoomEntity(str, str2, j, i, str3, i2, bundle, arrayList, i3);
    }
}
