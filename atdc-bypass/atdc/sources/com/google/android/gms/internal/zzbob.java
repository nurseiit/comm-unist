package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzbob implements Creator<zzboa> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        IBinder iBinder = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                iBinder = zzb.zzr(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzboa(iBinder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzboa[i];
    }
}
