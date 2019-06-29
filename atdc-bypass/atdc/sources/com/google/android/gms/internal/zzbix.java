package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzbix implements Creator<zzbiw> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        long j = 0;
        zzbiy zzbiy = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 3:
                    zzbiy = (zzbiy) zzb.zza(parcel, readInt, zzbiy.CREATOR);
                    break;
                case 4:
                    j = zzb.zzi(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbiw(str, zzbiy, j);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbiw[i];
    }
}
