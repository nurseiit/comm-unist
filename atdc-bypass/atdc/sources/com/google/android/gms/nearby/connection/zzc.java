package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzc implements Creator<AppMetadata> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                zzb.zzb(parcel, readInt);
            } else {
                list = zzb.zzc(parcel, readInt, AppIdentifier.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new AppMetadata(list);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new AppMetadata[i];
    }
}
