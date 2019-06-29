package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.internal.zzcri.zzg;
import java.util.HashSet;

public final class zzcrs implements Creator<zzg> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        String str = null;
        String str2 = str;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            Object valueOf;
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 != 1) {
                switch (i4) {
                    case 3:
                        i3 = zzb.zzg(parcel, readInt);
                        readInt = 3;
                        break;
                    case 4:
                        str2 = zzb.zzq(parcel, readInt);
                        readInt = 4;
                        break;
                    case 5:
                        str = zzb.zzq(parcel, readInt);
                        readInt = 5;
                        break;
                    case 6:
                        i2 = zzb.zzg(parcel, readInt);
                        readInt = 6;
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        continue;
                }
                valueOf = Integer.valueOf(readInt);
            } else {
                i = zzb.zzg(parcel, readInt);
                valueOf = Integer.valueOf(1);
            }
            hashSet.add(valueOf);
        }
        if (parcel.dataPosition() == zzd) {
            return new zzg(hashSet, i, str, i2, str2, i3);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzd);
        throw new zzc(stringBuilder.toString(), parcel);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzg[i];
    }
}
