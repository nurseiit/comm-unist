package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Device;
import java.util.List;

public final class zzm implements Creator<DataReadRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        List list = null;
        List list2 = list;
        List list3 = list2;
        List list4 = list3;
        DataSource dataSource = list4;
        IBinder iBinder = dataSource;
        List list5 = iBinder;
        List list6 = list5;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 != 1000) {
                switch (i4) {
                    case 1:
                        list = zzb.zzc(parcel2, readInt, DataType.CREATOR);
                        break;
                    case 2:
                        list2 = zzb.zzc(parcel2, readInt, DataSource.CREATOR);
                        break;
                    case 3:
                        j = zzb.zzi(parcel2, readInt);
                        break;
                    case 4:
                        j2 = zzb.zzi(parcel2, readInt);
                        break;
                    case 5:
                        list3 = zzb.zzc(parcel2, readInt, DataType.CREATOR);
                        break;
                    case 6:
                        list4 = zzb.zzc(parcel2, readInt, DataSource.CREATOR);
                        break;
                    case 7:
                        i2 = zzb.zzg(parcel2, readInt);
                        break;
                    case 8:
                        j3 = zzb.zzi(parcel2, readInt);
                        break;
                    case 9:
                        dataSource = (DataSource) zzb.zza(parcel2, readInt, DataSource.CREATOR);
                        break;
                    case 10:
                        i3 = zzb.zzg(parcel2, readInt);
                        break;
                    default:
                        switch (i4) {
                            case 12:
                                z = zzb.zzc(parcel2, readInt);
                                break;
                            case 13:
                                z2 = zzb.zzc(parcel2, readInt);
                                break;
                            case 14:
                                iBinder = zzb.zzr(parcel2, readInt);
                                break;
                            default:
                                switch (i4) {
                                    case 16:
                                        list5 = zzb.zzc(parcel2, readInt, Device.CREATOR);
                                        break;
                                    case 17:
                                        list6 = zzb.zzB(parcel2, readInt);
                                        break;
                                    default:
                                        zzb.zzb(parcel2, readInt);
                                        break;
                                }
                        }
                }
            }
            i = zzb.zzg(parcel2, readInt);
        }
        zzb.zzF(parcel2, zzd);
        return new DataReadRequest(i, list, list2, j, j2, list3, list4, i2, j3, dataSource, i3, z, z2, iBinder, list5, list6);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DataReadRequest[i];
    }
}
