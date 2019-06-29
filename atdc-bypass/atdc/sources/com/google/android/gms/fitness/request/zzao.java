package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public final class zzao implements Creator<zzan> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        long j4 = j3;
        DataSource dataSource = null;
        DataType dataType = dataSource;
        IBinder iBinder = dataType;
        PendingIntent pendingIntent = iBinder;
        List list = pendingIntent;
        IBinder iBinder2 = list;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i5 = 65535 & readInt;
            if (i5 != 1000) {
                switch (i5) {
                    case 1:
                        dataSource = (DataSource) zzb.zza(parcel2, readInt, DataSource.CREATOR);
                        break;
                    case 2:
                        dataType = (DataType) zzb.zza(parcel2, readInt, DataType.CREATOR);
                        break;
                    case 3:
                        iBinder = zzb.zzr(parcel2, readInt);
                        break;
                    case 4:
                        i2 = zzb.zzg(parcel2, readInt);
                        break;
                    case 5:
                        i3 = zzb.zzg(parcel2, readInt);
                        break;
                    case 6:
                        j = zzb.zzi(parcel2, readInt);
                        break;
                    case 7:
                        j2 = zzb.zzi(parcel2, readInt);
                        break;
                    case 8:
                        pendingIntent = (PendingIntent) zzb.zza(parcel2, readInt, PendingIntent.CREATOR);
                        break;
                    case 9:
                        j3 = zzb.zzi(parcel2, readInt);
                        break;
                    case 10:
                        i4 = zzb.zzg(parcel2, readInt);
                        break;
                    case 11:
                        list = zzb.zzc(parcel2, readInt, LocationRequest.CREATOR);
                        break;
                    case 12:
                        j4 = zzb.zzi(parcel2, readInt);
                        break;
                    case 13:
                        iBinder2 = zzb.zzr(parcel2, readInt);
                        break;
                    default:
                        zzb.zzb(parcel2, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel2, readInt);
        }
        zzb.zzF(parcel2, zzd);
        return new zzan(i, dataSource, dataType, iBinder, i2, i3, j, j2, pendingIntent, j3, i4, list, j4, iBinder2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzan[i];
    }
}
