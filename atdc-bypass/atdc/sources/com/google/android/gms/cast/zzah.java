package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzah implements Creator<MediaTrack> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 3:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 4:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 9:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new MediaTrack(j, i, str, str2, str3, str4, i2, str5);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new MediaTrack[i];
    }
}
