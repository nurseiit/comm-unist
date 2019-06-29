package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzbqa implements Creator<zzbpz> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                z = zzb.zzc(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbpz(z);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbpz[i];
    }
}
