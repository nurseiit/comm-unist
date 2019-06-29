package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzz implements Creator<RawDataPoint> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        long j4 = j3;
        Value[] valueArr = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 != 1000) {
                switch (i4) {
                    case 1:
                        j = zzb.zzi(parcel2, readInt);
                        break;
                    case 2:
                        j2 = zzb.zzi(parcel2, readInt);
                        break;
                    case 3:
                        valueArr = (Value[]) zzb.zzb(parcel2, readInt, Value.CREATOR);
                        break;
                    case 4:
                        i2 = zzb.zzg(parcel2, readInt);
                        break;
                    case 5:
                        i3 = zzb.zzg(parcel2, readInt);
                        break;
                    case 6:
                        j3 = zzb.zzi(parcel2, readInt);
                        break;
                    case 7:
                        j4 = zzb.zzi(parcel2, readInt);
                        break;
                    default:
                        zzb.zzb(parcel2, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel2, readInt);
        }
        zzb.zzF(parcel2, zzd);
        return new RawDataPoint(i, j, j2, valueArr, i2, i3, j3, j4);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new RawDataPoint[i];
    }
}
