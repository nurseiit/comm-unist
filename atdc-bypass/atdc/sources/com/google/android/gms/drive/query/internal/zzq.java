package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class zzq implements Creator<zzp> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        MetadataBundle metadataBundle = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                zzb.zzb(parcel, readInt);
            } else {
                metadataBundle = (MetadataBundle) zzb.zza(parcel, readInt, MetadataBundle.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzp(metadataBundle);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzp[i];
    }
}
