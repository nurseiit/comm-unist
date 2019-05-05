package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzf implements Creator<zzan> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzb.zzg(parcel, readInt);
                    break;
                case 2:
                    i2 = zzb.zzg(parcel, readInt);
                    break;
                case 3:
                    i3 = zzb.zzg(parcel, readInt);
                    break;
                case 4:
                    i4 = zzb.zzg(parcel, readInt);
                    break;
                case 5:
                    i5 = zzb.zzg(parcel, readInt);
                    break;
                case 6:
                    i6 = zzb.zzg(parcel, readInt);
                    break;
                case 7:
                    list = zzb.zzc(parcel, readInt, zzam.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzan(i, i2, i3, i4, i5, i6, list);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzan[i];
    }
}
