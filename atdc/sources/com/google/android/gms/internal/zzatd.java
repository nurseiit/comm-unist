package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.internal.zzag;
import java.util.ArrayList;

public final class zzatd implements Creator<zzatb> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                arrayList = zzb.zzc(parcel, readInt, zzag.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzatb(arrayList);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzatb[i];
    }
}
