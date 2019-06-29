package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzcfa implements Creator<zzcez> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        zzcew zzcew = str;
        String str2 = zzcew;
        long j = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 3:
                    zzcew = (zzcew) zzb.zza(parcel, readInt, zzcew.CREATOR);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel, readInt);
                    break;
                case 5:
                    j = zzb.zzi(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzcez(str, zzcew, str2, j);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcez[i];
    }
}