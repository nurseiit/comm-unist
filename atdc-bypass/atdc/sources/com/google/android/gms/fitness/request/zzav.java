package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.List;

public final class zzav implements Creator<SessionReadRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        String str = null;
        String str2 = str;
        List list = str2;
        List list2 = list;
        List list3 = list2;
        IBinder iBinder = list3;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        str = zzb.zzq(parcel2, readInt);
                        break;
                    case 2:
                        str2 = zzb.zzq(parcel2, readInt);
                        break;
                    case 3:
                        j = zzb.zzi(parcel2, readInt);
                        break;
                    case 4:
                        j2 = zzb.zzi(parcel2, readInt);
                        break;
                    case 5:
                        list = zzb.zzc(parcel2, readInt, DataType.CREATOR);
                        break;
                    case 6:
                        list2 = zzb.zzc(parcel2, readInt, DataSource.CREATOR);
                        break;
                    case 7:
                        z = zzb.zzc(parcel2, readInt);
                        break;
                    case 8:
                        z2 = zzb.zzc(parcel2, readInt);
                        break;
                    case 9:
                        list3 = zzb.zzC(parcel2, readInt);
                        break;
                    case 10:
                        iBinder = zzb.zzr(parcel2, readInt);
                        break;
                    default:
                        zzb.zzb(parcel2, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel2, readInt);
        }
        zzb.zzF(parcel2, zzd);
        return new SessionReadRequest(i, str, str2, j, j2, list, list2, z, z2, list3, iBinder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new SessionReadRequest[i];
    }
}
