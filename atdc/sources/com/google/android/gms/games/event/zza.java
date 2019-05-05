package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;

public final class zza implements Creator<EventEntity> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        Uri uri = str3;
        String str4 = uri;
        Player player = str4;
        String str5 = player;
        long j = 0;
        boolean z = false;
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
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    uri = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 5:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    player = (PlayerEntity) zzb.zza(parcel2, readInt, PlayerEntity.CREATOR);
                    break;
                case 7:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 8:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new EventEntity(str, str2, str3, uri, str4, player, j, str5, z);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new EventEntity[i];
    }
}
