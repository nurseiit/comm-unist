package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
import java.util.List;

public final class zzi implements Creator<DataSet> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List arrayList = new ArrayList();
        DataSource dataSource = null;
        DataType dataType = dataSource;
        List list = dataType;
        int i = 0;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        dataSource = (DataSource) zzb.zza(parcel, readInt, DataSource.CREATOR);
                        break;
                    case 2:
                        dataType = (DataType) zzb.zza(parcel, readInt, DataType.CREATOR);
                        break;
                    case 3:
                        zzb.zza(parcel, readInt, arrayList, getClass().getClassLoader());
                        break;
                    case 4:
                        list = zzb.zzc(parcel, readInt, DataSource.CREATOR);
                        break;
                    case 5:
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
        return new DataSet(i, dataSource, dataType, arrayList, list, z);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DataSet[i];
    }
}
