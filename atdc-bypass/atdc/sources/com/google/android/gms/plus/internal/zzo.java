package com.google.android.gms.plus.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzo implements Creator<zzn> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        String[] strArr = str;
        String[] strArr2 = strArr;
        String[] strArr3 = strArr2;
        String str2 = strArr3;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        PlusCommonExtras plusCommonExtras = str5;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    case 2:
                        strArr = zzb.zzA(parcel, readInt);
                        break;
                    case 3:
                        strArr2 = zzb.zzA(parcel, readInt);
                        break;
                    case 4:
                        strArr3 = zzb.zzA(parcel, readInt);
                        break;
                    case 5:
                        str2 = zzb.zzq(parcel, readInt);
                        break;
                    case 6:
                        str3 = zzb.zzq(parcel, readInt);
                        break;
                    case 7:
                        str4 = zzb.zzq(parcel, readInt);
                        break;
                    case 8:
                        str5 = zzb.zzq(parcel, readInt);
                        break;
                    case 9:
                        plusCommonExtras = (PlusCommonExtras) zzb.zza(parcel, readInt, PlusCommonExtras.CREATOR);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new zzn(i, str, strArr, strArr2, strArr3, str2, str3, str4, str5, plusCommonExtras);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzn[i];
    }
}
