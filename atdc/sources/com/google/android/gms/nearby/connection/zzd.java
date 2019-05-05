package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzd implements Creator<DiscoveryOptions> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Strategy strategy = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                zzb.zzb(parcel, readInt);
            } else {
                strategy = (Strategy) zzb.zza(parcel, readInt, Strategy.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new DiscoveryOptions(strategy);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DiscoveryOptions[i];
    }
}
