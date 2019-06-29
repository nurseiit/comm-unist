package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzj implements Creator<MetadataBundle> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                bundle = zzb.zzs(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new MetadataBundle(bundle);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new MetadataBundle[i];
    }
}
