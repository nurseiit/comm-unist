package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataType;
import java.util.List;

public final class zzo implements Creator<DataSourcesRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        List list2 = list;
        IBinder iBinder = list2;
        int i = 0;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        list = zzb.zzc(parcel, readInt, DataType.CREATOR);
                        break;
                    case 2:
                        list2 = zzb.zzB(parcel, readInt);
                        break;
                    case 3:
                        z = zzb.zzc(parcel, readInt);
                        break;
                    case 4:
                        iBinder = zzb.zzr(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new DataSourcesRequest(i, list, list2, z, iBinder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DataSourcesRequest[i];
    }
}
