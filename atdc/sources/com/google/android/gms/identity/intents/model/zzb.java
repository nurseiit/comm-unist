package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class zzb implements Creator<UserAddress> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        String str10 = str9;
        String str11 = str10;
        String str12 = str11;
        String str13 = str12;
        String str14 = str13;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 10:
                    str9 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 11:
                    str10 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 12:
                    str11 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 13:
                    str12 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 14:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, readInt);
                    break;
                case 15:
                    str13 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 16:
                    str14 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel2, zzd);
        return new UserAddress(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, z, str13, str14);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new UserAddress[i];
    }
}
