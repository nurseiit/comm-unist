package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzaa implements Creator<zzz> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                i = zzb.zzg(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzz(i);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzz[i];
    }
}
