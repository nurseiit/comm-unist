package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.DataSet;

public final class zzb implements Creator<DailyTotalResult> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        Status status = null;
        int i = 0;
        DataSet dataSet = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        status = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, readInt, Status.CREATOR);
                        break;
                    case 2:
                        dataSet = (DataSet) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, readInt, DataSet.CREATOR);
                        break;
                    default:
                        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, readInt);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel, zzd);
        return new DailyTotalResult(i, status, dataSet);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DailyTotalResult[i];
    }
}
