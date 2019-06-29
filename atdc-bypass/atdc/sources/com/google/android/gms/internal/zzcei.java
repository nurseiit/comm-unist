package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzcei implements Creator<zzceh> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        long j4 = j3;
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        long j5 = -2147483648L;
        boolean z = true;
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 7:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 8:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 10:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 11:
                    j5 = zzb.zzi(parcel2, readInt);
                    break;
                case 12:
                    str6 = zzb.zzq(parcel2, readInt);
                    break;
                case 13:
                    j3 = zzb.zzi(parcel2, readInt);
                    break;
                case 14:
                    j4 = zzb.zzi(parcel2, readInt);
                    break;
                case 15:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzceh(str, str2, str3, str4, j, j2, str5, z, z2, j5, str6, j3, j4, i);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzceh[i];
    }
}
