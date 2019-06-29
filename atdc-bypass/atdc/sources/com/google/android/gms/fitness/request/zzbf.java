package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataType;
import java.util.List;

public final class zzbf implements Creator<StartBleScanRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        IBinder iBinder = list;
        IBinder iBinder2 = iBinder;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 != 1000) {
                switch (i3) {
                    case 1:
                        list = zzb.zzc(parcel, readInt, DataType.CREATOR);
                        break;
                    case 2:
                        iBinder = zzb.zzr(parcel, readInt);
                        break;
                    case 3:
                        i2 = zzb.zzg(parcel, readInt);
                        break;
                    case 4:
                        iBinder2 = zzb.zzr(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new StartBleScanRequest(i, list, iBinder, i2, iBinder2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new StartBleScanRequest[i];
    }
}
