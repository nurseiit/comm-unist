package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzcel implements Creator<zzcek> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        String str = null;
        String str2 = str;
        zzcji zzcji = str2;
        String str3 = zzcji;
        zzcez zzcez = str3;
        zzcez zzcez2 = zzcez;
        zzcez zzcez3 = zzcez2;
        int i = 0;
        boolean z = false;
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
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    zzcji = (zzcji) zzb.zza(parcel2, readInt, zzcji.CREATOR);
                    break;
                case 5:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 6:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 7:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    zzcez = (zzcez) zzb.zza(parcel2, readInt, zzcez.CREATOR);
                    break;
                case 9:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 10:
                    zzcez2 = (zzcez) zzb.zza(parcel2, readInt, zzcez.CREATOR);
                    break;
                case 11:
                    j3 = zzb.zzi(parcel2, readInt);
                    break;
                case 12:
                    zzcez3 = (zzcez) zzb.zza(parcel2, readInt, zzcez.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzcek(i, str, str2, zzcji, j, z, str3, zzcez, j2, zzcez2, j3, zzcez3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcek[i];
    }
}
