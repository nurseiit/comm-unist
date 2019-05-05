package com.google.android.gms.internal;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class fn implements Creator<fm> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Rect rect = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                rect = (Rect) zzb.zza(parcel, readInt, Rect.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new fm(rect);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new fm[i];
    }
}
