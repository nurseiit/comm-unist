package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.Collection;

public final class zza implements Creator<AppVisibleCustomProperties> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Collection collection = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                collection = zzb.zzc(parcel, readInt, zzc.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new AppVisibleCustomProperties(collection);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new AppVisibleCustomProperties[i];
    }
}
