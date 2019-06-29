package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzg implements Creator<PlayerEntity> {
    public /* synthetic */ Object[] newArray(int i) {
        return new PlayerEntity[i];
    }

    /* renamed from: zzg */
    public PlayerEntity createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        String str = null;
        String str2 = str;
        Uri uri = str2;
        Uri uri2 = uri;
        String str3 = uri2;
        String str4 = str3;
        String str5 = str4;
        com.google.android.gms.games.internal.player.zzb zzb = str5;
        PlayerLevelInfo playerLevelInfo = zzb;
        String str6 = playerLevelInfo;
        String str7 = str6;
        Uri uri3 = str7;
        String str8 = uri3;
        Uri uri4 = str8;
        String str9 = uri4;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        int i2 = 0;
        boolean z3 = false;
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
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 6:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 7:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 8:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 14:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 15:
                    zzb = (com.google.android.gms.games.internal.player.zzb) zzb.zza(parcel2, readInt, com.google.android.gms.games.internal.player.zzb.CREATOR);
                    break;
                case 16:
                    playerLevelInfo = (PlayerLevelInfo) zzb.zza(parcel2, readInt, PlayerLevelInfo.CREATOR);
                    break;
                case 18:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 19:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 20:
                    str6 = zzb.zzq(parcel2, readInt);
                    break;
                case 21:
                    str7 = zzb.zzq(parcel2, readInt);
                    break;
                case 22:
                    uri3 = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 23:
                    str8 = zzb.zzq(parcel2, readInt);
                    break;
                case 24:
                    uri4 = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 25:
                    str9 = zzb.zzq(parcel2, readInt);
                    break;
                case 26:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 27:
                    j3 = zzb.zzi(parcel2, readInt);
                    break;
                case 28:
                    z3 = zzb.zzc(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new PlayerEntity(str, str2, uri, uri2, j, i, j2, str3, str4, str5, zzb, playerLevelInfo, z, z2, str6, str7, uri3, str8, uri4, str9, i2, j3, z3);
    }
}
