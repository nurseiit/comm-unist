package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzm implements Creator<zzl> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        int i = 0;
        byte b = (byte) 0;
        byte b2 = (byte) 0;
        byte b3 = (byte) 0;
        byte b4 = (byte) 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 3:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    str6 = zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    b = zzb.zze(parcel2, readInt);
                    break;
                case 10:
                    b2 = zzb.zze(parcel2, readInt);
                    break;
                case 11:
                    b3 = zzb.zze(parcel2, readInt);
                    break;
                case 12:
                    b4 = zzb.zze(parcel2, readInt);
                    break;
                case 13:
                    str7 = zzb.zzq(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzl(i, str, str2, str3, str4, str5, str6, b, b2, b3, b4, str7);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzl[i];
    }
}
