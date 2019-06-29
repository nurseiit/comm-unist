package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzapk implements Creator<zzapi> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        zzapd[] zzapdArr = str3;
        int[] iArr = zzapdArr;
        String str4 = iArr;
        boolean z = false;
        int i = 1;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 11) {
                switch (i2) {
                    case 1:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    case 2:
                        str2 = zzb.zzq(parcel, readInt);
                        break;
                    case 3:
                        z = zzb.zzc(parcel, readInt);
                        break;
                    case 4:
                        i = zzb.zzg(parcel, readInt);
                        break;
                    case 5:
                        z2 = zzb.zzc(parcel, readInt);
                        break;
                    case 6:
                        str3 = zzb.zzq(parcel, readInt);
                        break;
                    case 7:
                        zzapdArr = (zzapd[]) zzb.zzb(parcel, readInt, zzapd.CREATOR);
                        break;
                    case 8:
                        iArr = zzb.zzw(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            str4 = zzb.zzq(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new zzapi(str, str2, z, i, z2, str3, zzapdArr, iArr, str4);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzapi[i];
    }
}
