package com.google.android.gms.fitness.service;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.fitness.data.DataSource;

public final class zzb implements Creator<FitnessSensorServiceRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        DataSource dataSource = null;
        IBinder iBinder = dataSource;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, readInt, DataSource.CREATOR);
                        break;
                    case 2:
                        iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, readInt);
                        break;
                    case 3:
                        j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, readInt);
                        break;
                    case 4:
                        j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, readInt);
                        break;
                    default:
                        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, readInt);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel, zzd);
        return new FitnessSensorServiceRequest(i, dataSource, iBinder, j, j2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new FitnessSensorServiceRequest[i];
    }
}
