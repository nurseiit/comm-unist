package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzc implements Creator<zza> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        List list = str;
        String str2 = list;
        List list2 = str2;
        String str3 = list2;
        List list3 = str3;
        String str4 = list3;
        List list4 = str4;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    str2 = zzb.zzq(parcel, readInt);
                    break;
                case 2:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 3:
                    list = zzb.zzB(parcel, readInt);
                    break;
                case 4:
                    list2 = zzb.zzc(parcel, readInt, zzb.CREATOR);
                    break;
                case 5:
                    i = zzb.zzg(parcel, readInt);
                    break;
                case 6:
                    str3 = zzb.zzq(parcel, readInt);
                    break;
                case 7:
                    list3 = zzb.zzc(parcel, readInt, zzb.CREATOR);
                    break;
                case 8:
                    str4 = zzb.zzq(parcel, readInt);
                    break;
                case 9:
                    list4 = zzb.zzc(parcel, readInt, zzb.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zza(str, list, i, str2, list2, str3, list3, str4, list4);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zza[i];
    }
}
