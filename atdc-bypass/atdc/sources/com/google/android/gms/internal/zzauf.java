package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzauf implements Creator<zzaue> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        int[] iArr = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                iArr = zzb.zzw(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzaue(iArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzaue[i];
    }
}
