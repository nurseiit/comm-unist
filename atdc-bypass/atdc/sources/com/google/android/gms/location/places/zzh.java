package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzh implements Creator<PlaceFilter> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        boolean z = false;
        List list2 = null;
        List list3 = list2;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                list = zzb.zzB(parcel, readInt);
            } else if (i != 6) {
                switch (i) {
                    case 3:
                        z = zzb.zzc(parcel, readInt);
                        break;
                    case 4:
                        list3 = zzb.zzc(parcel, readInt, zzo.CREATOR);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            } else {
                list2 = zzb.zzC(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new PlaceFilter(list, z, list2, list3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new PlaceFilter[i];
    }
}
