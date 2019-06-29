package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.internal.zzcri.zzd;
import java.util.HashSet;

public final class zzcrp implements Creator<zzd> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzb.zzg(parcel, readInt);
                    readInt = 1;
                    break;
                case 2:
                    str = zzb.zzq(parcel, readInt);
                    readInt = 2;
                    break;
                case 3:
                    str2 = zzb.zzq(parcel, readInt);
                    readInt = 3;
                    break;
                case 4:
                    str3 = zzb.zzq(parcel, readInt);
                    readInt = 4;
                    break;
                case 5:
                    str4 = zzb.zzq(parcel, readInt);
                    readInt = 5;
                    break;
                case 6:
                    str5 = zzb.zzq(parcel, readInt);
                    readInt = 6;
                    break;
                case 7:
                    str6 = zzb.zzq(parcel, readInt);
                    readInt = 7;
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    continue;
            }
            hashSet.add(Integer.valueOf(readInt));
        }
        if (parcel.dataPosition() == zzd) {
            return new zzd(hashSet, i, str, str2, str3, str4, str5, str6);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzd);
        throw new zzc(stringBuilder.toString(), parcel);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzd[i];
    }
}
