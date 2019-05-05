package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class zzb implements Creator<AppIdentifier> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, readInt);
            } else {
                str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, readInt);
            }
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel, zzd);
        return new AppIdentifier(str);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new AppIdentifier[i];
    }
}
