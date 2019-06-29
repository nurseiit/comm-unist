package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzbpo implements Creator<zzbpn> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        DataHolder dataHolder = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                dataHolder = (DataHolder) zzb.zza(parcel, readInt, DataHolder.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbpn(dataHolder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbpn[i];
    }
}
