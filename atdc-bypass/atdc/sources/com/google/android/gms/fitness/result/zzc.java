package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;
import java.util.List;

public final class zzc implements Creator<DataReadResult> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        Status status = null;
        List list = status;
        List list2 = list;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 != 1000) {
                switch (i3) {
                    case 1:
                        zzb.zza(parcel, readInt, arrayList, getClass().getClassLoader());
                        break;
                    case 2:
                        status = (Status) zzb.zza(parcel, readInt, Status.CREATOR);
                        break;
                    case 3:
                        zzb.zza(parcel, readInt, arrayList2, getClass().getClassLoader());
                        break;
                    default:
                        switch (i3) {
                            case 5:
                                i2 = zzb.zzg(parcel, readInt);
                                break;
                            case 6:
                                list = zzb.zzc(parcel, readInt, DataSource.CREATOR);
                                break;
                            case 7:
                                list2 = zzb.zzc(parcel, readInt, DataType.CREATOR);
                                break;
                            default:
                                zzb.zzb(parcel, readInt);
                                break;
                        }
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new DataReadResult(i, arrayList, status, arrayList2, i2, list, list2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DataReadResult[i];
    }
}
