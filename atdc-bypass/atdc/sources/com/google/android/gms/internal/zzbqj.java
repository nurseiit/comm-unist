package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.query.Query;

public final class zzbqj implements Creator<zzbqi> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Query query = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                query = (Query) zzb.zza(parcel, readInt, Query.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbqi(query);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbqi[i];
    }
}
