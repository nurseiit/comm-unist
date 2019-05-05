package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzbpc implements Creator<zzbpb> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        zzbog zzbog = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                zzbog = (zzbog) zzb.zza(parcel, readInt, zzbog.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbpb(zzbog);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbpb[i];
    }
}
