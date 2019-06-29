package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzh implements Creator<DataPoint> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        DataSource dataSource = null;
        Value[] valueArr = dataSource;
        DataSource dataSource2 = valueArr;
        long j = 0;
        long j2 = j;
        long j3 = j2;
        long j4 = j3;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                dataSource = (DataSource) zzb.zza(parcel2, readInt, DataSource.CREATOR);
            } else if (i2 != 1000) {
                switch (i2) {
                    case 3:
                        j = zzb.zzi(parcel2, readInt);
                        break;
                    case 4:
                        j2 = zzb.zzi(parcel2, readInt);
                        break;
                    case 5:
                        valueArr = (Value[]) zzb.zzb(parcel2, readInt, Value.CREATOR);
                        break;
                    case 6:
                        dataSource2 = (DataSource) zzb.zza(parcel2, readInt, DataSource.CREATOR);
                        break;
                    case 7:
                        j3 = zzb.zzi(parcel2, readInt);
                        break;
                    case 8:
                        j4 = zzb.zzi(parcel2, readInt);
                        break;
                    default:
                        zzb.zzb(parcel2, readInt);
                        break;
                }
            } else {
                i = zzb.zzg(parcel2, readInt);
            }
        }
        zzb.zzF(parcel2, zzd);
        return new DataPoint(i, dataSource, j, j2, valueArr, dataSource2, j3, j4);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DataPoint[i];
    }
}
