package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataType;

public final class zzg implements Creator<zzf> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        IBinder iBinder = null;
        int i = 0;
        DataType dataType = null;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 4) {
                z = zzb.zzc(parcel, readInt);
            } else if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        iBinder = zzb.zzr(parcel, readInt);
                        break;
                    case 2:
                        dataType = (DataType) zzb.zza(parcel, readInt, DataType.CREATOR);
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
        return new zzf(i, iBinder, dataType, z);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzf[i];
    }
}
