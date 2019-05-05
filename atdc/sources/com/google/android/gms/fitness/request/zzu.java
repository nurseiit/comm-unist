package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;

public final class zzu implements Creator<DataUpdateListenerRegistrationRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        DataSource dataSource = null;
        DataType dataType = dataSource;
        PendingIntent pendingIntent = dataType;
        IBinder iBinder = pendingIntent;
        int i = 0;
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
                        pendingIntent = (PendingIntent) zzb.zza(parcel, readInt, PendingIntent.CREATOR);
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
        return new DataUpdateListenerRegistrationRequest(i, dataSource, dataType, pendingIntent, iBinder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DataUpdateListenerRegistrationRequest[i];
    }
}
