package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzh implements Creator<NotificationOptions> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        List list = null;
        int[] iArr = list;
        String str = iArr;
        long j = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    list = zzb.zzC(parcel2, readInt);
                    break;
                case 3:
                    iArr = zzb.zzw(parcel2, readInt);
                    break;
                case 4:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 5:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 7:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 8:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                case 9:
                    i4 = zzb.zzg(parcel2, readInt);
                    break;
                case 10:
                    i5 = zzb.zzg(parcel2, readInt);
                    break;
                case 11:
                    i6 = zzb.zzg(parcel2, readInt);
                    break;
                case 12:
                    i7 = zzb.zzg(parcel2, readInt);
                    break;
                case 13:
                    i8 = zzb.zzg(parcel2, readInt);
                    break;
                case 14:
                    i9 = zzb.zzg(parcel2, readInt);
                    break;
                case 15:
                    i10 = zzb.zzg(parcel2, readInt);
                    break;
                case 16:
                    i11 = zzb.zzg(parcel2, readInt);
                    break;
                case 17:
                    i12 = zzb.zzg(parcel2, readInt);
                    break;
                case 18:
                    i13 = zzb.zzg(parcel2, readInt);
                    break;
                case 19:
                    i14 = zzb.zzg(parcel2, readInt);
                    break;
                case 20:
                    i15 = zzb.zzg(parcel2, readInt);
                    break;
                case 21:
                    i16 = zzb.zzg(parcel2, readInt);
                    break;
                case 22:
                    i17 = zzb.zzg(parcel2, readInt);
                    break;
                case 23:
                    i18 = zzb.zzg(parcel2, readInt);
                    break;
                case 24:
                    i19 = zzb.zzg(parcel2, readInt);
                    break;
                case 25:
                    i20 = zzb.zzg(parcel2, readInt);
                    break;
                case 26:
                    i21 = zzb.zzg(parcel2, readInt);
                    break;
                case 27:
                    i22 = zzb.zzg(parcel2, readInt);
                    break;
                case 28:
                    i23 = zzb.zzg(parcel2, readInt);
                    break;
                case 29:
                    i24 = zzb.zzg(parcel2, readInt);
                    break;
                case 30:
                    i25 = zzb.zzg(parcel2, readInt);
                    break;
                case 31:
                    i26 = zzb.zzg(parcel2, readInt);
                    break;
                case 32:
                    i27 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new NotificationOptions(list, iArr, j, str, i, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new NotificationOptions[i];
    }
}
