package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzn implements Creator<CastDevice> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        List list = str5;
        String str6 = list;
        String str7 = str6;
        int i = 0;
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 8:
                    list = zzb.zzc(parcel2, readInt, WebImage.CREATOR);
                    break;
                case 9:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 10:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                case 11:
                    str6 = zzb.zzq(parcel2, readInt);
                    break;
                case 12:
                    str7 = zzb.zzq(parcel2, readInt);
                    break;
                case 13:
                    i4 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new CastDevice(str, str2, str3, str4, str5, i, list, i2, i3, str6, str7, i4);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new CastDevice[i];
    }
}
