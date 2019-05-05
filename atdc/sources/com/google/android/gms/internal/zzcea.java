package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzcea implements Creator<zzcdy> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = null;
        List list = str2;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i != 6) {
                switch (i) {
                    case 1:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    case 2:
                        str2 = zzb.zzq(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            list = zzb.zzc(parcel, readInt, zzcdw.CREATOR);
        }
        zzb.zzF(parcel, zzd);
        return new zzcdy(str, str2, list);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcdy[i];
    }
}
