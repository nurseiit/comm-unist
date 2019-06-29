package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataType;

public final class zze implements Creator<DataTypeResult> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Status status = null;
        int i = 0;
        DataType dataType = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                status = (Status) zzb.zza(parcel, readInt, Status.CREATOR);
            } else if (i2 == 3) {
                dataType = (DataType) zzb.zza(parcel, readInt, DataType.CREATOR);
            } else if (i2 != 1000) {
                zzb.zzb(parcel, readInt);
            } else {
                i = zzb.zzg(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new DataTypeResult(i, status, dataType);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DataTypeResult[i];
    }
}
