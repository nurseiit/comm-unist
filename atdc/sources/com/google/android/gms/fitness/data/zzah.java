package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzah implements Creator<Subscription> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        DataSource dataSource = null;
        DataType dataType = dataSource;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 != 1000) {
                switch (i3) {
                    case 1:
                        dataSource = (DataSource) zzb.zza(parcel, readInt, DataSource.CREATOR);
                        break;
                    case 2:
                        dataType = (DataType) zzb.zza(parcel, readInt, DataType.CREATOR);
                        break;
                    case 3:
                        j = zzb.zzi(parcel, readInt);
                        break;
                    case 4:
                        i2 = zzb.zzg(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new Subscription(i, dataSource, dataType, j, i2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Subscription[i];
    }
}
