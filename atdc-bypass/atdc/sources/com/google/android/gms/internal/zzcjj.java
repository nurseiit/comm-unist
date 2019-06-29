package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzcjj implements Creator<zzcji> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        Long l = str;
        Float f = l;
        String str2 = f;
        String str3 = str2;
        Double d = str3;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 2:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 4:
                    l = zzb.zzj(parcel2, readInt);
                    break;
                case 5:
                    f = zzb.zzm(parcel2, readInt);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    d = zzb.zzo(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzcji(i, str, j, l, f, str2, str3, d);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcji[i];
    }
}
