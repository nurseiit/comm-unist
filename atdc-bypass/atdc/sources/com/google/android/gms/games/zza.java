package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zza implements Creator<GameEntity> {
    public /* synthetic */ Object[] newArray(int i) {
        return new GameEntity[i];
    }

    /* renamed from: zzf */
    public GameEntity createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        Uri uri = str6;
        Uri uri2 = uri;
        Uri uri3 = uri2;
        String str7 = uri3;
        String str8 = str7;
        String str9 = str8;
        String str10 = str9;
        String str11 = str10;
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
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
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    str6 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    uri = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 8:
                    uri2 = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 9:
                    uri3 = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 10:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 11:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 12:
                    str7 = zzb.zzq(parcel2, readInt);
                    break;
                case 13:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 14:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 15:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                case 16:
                    z3 = zzb.zzc(parcel2, readInt);
                    break;
                case 17:
                    z4 = zzb.zzc(parcel2, readInt);
                    break;
                case 18:
                    str8 = zzb.zzq(parcel2, readInt);
                    break;
                case 19:
                    str9 = zzb.zzq(parcel2, readInt);
                    break;
                case 20:
                    str10 = zzb.zzq(parcel2, readInt);
                    break;
                case 21:
                    z5 = zzb.zzc(parcel2, readInt);
                    break;
                case 22:
                    z6 = zzb.zzc(parcel2, readInt);
                    break;
                case 23:
                    z7 = zzb.zzc(parcel2, readInt);
                    break;
                case 24:
                    str11 = zzb.zzq(parcel2, readInt);
                    break;
                case 25:
                    z8 = zzb.zzc(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new GameEntity(str, str2, str3, str4, str5, str6, uri, uri2, uri3, z, z2, str7, i, i2, i3, z3, z4, str8, str9, str10, z5, z6, z7, str11, z8);
    }
}
