package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
import java.util.List;

public final class zzac implements Creator<GoalsReadRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        List arrayList3 = new ArrayList();
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        iBinder = zzb.zzr(parcel, readInt);
                        break;
                    case 2:
                        zzb.zza(parcel, readInt, arrayList, getClass().getClassLoader());
                        break;
                    case 3:
                        zzb.zza(parcel, readInt, arrayList2, getClass().getClassLoader());
                        break;
                    case 4:
                        zzb.zza(parcel, readInt, arrayList3, getClass().getClassLoader());
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new GoalsReadRequest(i, iBinder, arrayList, arrayList2, arrayList3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new GoalsReadRequest[i];
    }
}
