package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzabj implements Creator<zzabi> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                str = zzb.zzq(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzabi(str);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzabi[i];
    }
}