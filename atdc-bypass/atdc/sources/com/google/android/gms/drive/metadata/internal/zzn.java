package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzn implements Creator<ParentDriveIdSet> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                list = zzb.zzc(parcel, readInt, zzq.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new ParentDriveIdSet(list);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new ParentDriveIdSet[i];
    }
}
