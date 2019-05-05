package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzccp implements Creator<zzcco> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Status status = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                zzb.zzb(parcel, readInt);
            } else {
                status = (Status) zzb.zza(parcel, readInt, Status.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzcco(status);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcco[i];
    }
}
