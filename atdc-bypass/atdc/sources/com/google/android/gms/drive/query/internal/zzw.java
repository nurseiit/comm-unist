package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzw implements Creator<zzv> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        FilterHolder filterHolder = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                zzb.zzb(parcel, readInt);
            } else {
                filterHolder = (FilterHolder) zzb.zza(parcel, readInt, FilterHolder.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzv(filterHolder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzv[i];
    }
}
