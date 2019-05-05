package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzbkp;

public final class zzo implements Creator<zzn> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        zzbkp zzbkp = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                zzbkp = (zzbkp) zzb.zza(parcel, readInt, zzbkp.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzn(zzbkp);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzn[i];
    }
}
