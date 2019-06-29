package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzcpk implements Creator<zzcpj> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        int i = 0;
        String str2 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 3) {
                str = zzb.zzq(parcel, readInt);
            } else if (i2 == 6) {
                str2 = zzb.zzq(parcel, readInt);
            } else if (i2 != 1000) {
                zzb.zzb(parcel, readInt);
            } else {
                i = zzb.zzg(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzcpj(i, str, str2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcpj[i];
    }
}
