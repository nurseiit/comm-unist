package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzk implements Creator<DataSource> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        DataType dataType = null;
        String str = dataType;
        Device device = str;
        zzb zzb = device;
        String str2 = zzb;
        int[] iArr = str2;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 8) {
                iArr = zzb.zzw(parcel, readInt);
            } else if (i3 != 1000) {
                switch (i3) {
                    case 1:
                        dataType = (DataType) zzb.zza(parcel, readInt, DataType.CREATOR);
                        break;
                    case 2:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    case 3:
                        i2 = zzb.zzg(parcel, readInt);
                        break;
                    case 4:
                        device = (Device) zzb.zza(parcel, readInt, Device.CREATOR);
                        break;
                    case 5:
                        zzb = (zzb) zzb.zza(parcel, readInt, zzb.CREATOR);
                        break;
                    case 6:
                        str2 = zzb.zzq(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            } else {
                i = zzb.zzg(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new DataSource(i, dataType, str, i2, device, zzb, str2, iArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DataSource[i];
    }
}
