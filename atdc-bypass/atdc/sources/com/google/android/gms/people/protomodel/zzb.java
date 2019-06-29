package com.google.android.gms.people.protomodel;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.List;

public final class zzb implements Creator<zzc> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        String str = null;
        List list = str;
        String str2 = list;
        Long l = str2;
        Long l2 = l;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, readInt);
                    break;
                case 3:
                    list = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, readInt, zzg.CREATOR);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, readInt);
                    break;
                case 5:
                    l = com.google.android.gms.common.internal.safeparcel.zzb.zzj(parcel, readInt);
                    break;
                case 6:
                    l2 = com.google.android.gms.common.internal.safeparcel.zzb.zzj(parcel, readInt);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, readInt);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel, zzd);
        return new zzc(str, list, str2, l, l2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzc[i];
    }
}
