package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataType;
import java.util.List;

public final class zzbzp implements Creator<zzbzo> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        int i = 0;
        List list = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                list = zzb.zzc(parcel, readInt, DataType.CREATOR);
            } else if (i2 != 1000) {
                zzb.zzb(parcel, readInt);
            } else {
                i = zzb.zzg(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbzo(i, list);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbzo[i];
    }
}
