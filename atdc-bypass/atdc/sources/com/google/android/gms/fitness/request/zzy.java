package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSet;

public final class zzy implements Creator<DataUpdateRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        DataSet dataSet = null;
        IBinder iBinder = dataSet;
        long j = 0;
        long j2 = j;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        j = zzb.zzi(parcel, readInt);
                        break;
                    case 2:
                        j2 = zzb.zzi(parcel, readInt);
                        break;
                    case 3:
                        dataSet = (DataSet) zzb.zza(parcel, readInt, DataSet.CREATOR);
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
        return new DataUpdateRequest(i, j, j2, dataSet, iBinder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DataUpdateRequest[i];
    }
}
