package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzbto implements Creator<zzbtn> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        DataHolder dataHolder = list;
        List list2 = dataHolder;
        zzbtd zzbtd = list2;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    list = zzb.zzc(parcel, readInt, zzbtl.CREATOR);
                    break;
                case 3:
                    dataHolder = (DataHolder) zzb.zza(parcel, readInt, DataHolder.CREATOR);
                    break;
                case 4:
                    z = zzb.zzc(parcel, readInt);
                    break;
                case 5:
                    list2 = zzb.zzC(parcel, readInt);
                    break;
                case 6:
                    zzbtd = (zzbtd) zzb.zza(parcel, readInt, zzbtd.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbtn(list, dataHolder, z, list2, zzbtd);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbtn[i];
    }
}
