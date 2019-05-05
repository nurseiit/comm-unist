package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzbpt implements Creator<zzbps> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        zzbqg zzbqg = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                zzbqg = (zzbqg) zzb.zza(parcel, readInt, zzbqg.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbps(zzbqg);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbps[i];
    }
}
