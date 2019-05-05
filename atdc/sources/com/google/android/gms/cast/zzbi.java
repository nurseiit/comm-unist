package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzbi implements Creator<TextTrackStyle> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    f = zzb.zzl(parcel2, readInt);
                    break;
                case 3:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 4:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 5:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                case 6:
                    i4 = zzb.zzg(parcel2, readInt);
                    break;
                case 7:
                    i5 = zzb.zzg(parcel2, readInt);
                    break;
                case 8:
                    i6 = zzb.zzg(parcel2, readInt);
                    break;
                case 9:
                    i7 = zzb.zzg(parcel2, readInt);
                    break;
                case 10:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 11:
                    i8 = zzb.zzg(parcel2, readInt);
                    break;
                case 12:
                    i9 = zzb.zzg(parcel2, readInt);
                    break;
                case 13:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new TextTrackStyle(f, i, i2, i3, i4, i5, i6, i7, str, i8, i9, str2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new TextTrackStyle[i];
    }
}
