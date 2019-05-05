package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzaa implements Creator<RawDataSet> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 != 1000) {
                switch (i4) {
                    case 1:
                        i2 = zzb.zzg(parcel, readInt);
                        break;
                    case 2:
                        i3 = zzb.zzg(parcel, readInt);
                        break;
                    case 3:
                        list = zzb.zzc(parcel, readInt, RawDataPoint.CREATOR);
                        break;
                    case 4:
                        z = zzb.zzc(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new RawDataSet(i, i2, i3, list, z);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new RawDataSet[i];
    }
}
