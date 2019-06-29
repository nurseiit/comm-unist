package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;

public final class zzbn implements Creator<zzbm> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        DataType dataType = null;
        int i = 0;
        DataSource dataSource = null;
        IBinder iBinder = dataSource;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        dataType = (DataType) zzb.zza(parcel, readInt, DataType.CREATOR);
                        break;
                    case 2:
                        dataSource = (DataSource) zzb.zza(parcel, readInt, DataSource.CREATOR);
                        break;
                    case 3:
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
        return new zzbm(i, dataType, dataSource, iBinder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbm[i];
    }
}
