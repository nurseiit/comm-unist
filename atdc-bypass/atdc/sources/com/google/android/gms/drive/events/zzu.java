package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveSpace;
import java.util.List;

public final class zzu implements Creator<zzt> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                list = zzb.zzc(parcel, readInt, DriveSpace.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzt(list);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzt[i];
    }
}
