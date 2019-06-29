package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzbtm implements Creator<zzbtl> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        List list = str2;
        String str3 = list;
        String str4 = str3;
        zzbtt zzbtt = str4;
        zzbtr zzbtr = zzbtt;
        zzbtx zzbtx = zzbtr;
        zzbtz zzbtz = zzbtx;
        zzbub zzbub = zzbtz;
        zzbtv zzbtv = zzbub;
        zzbtp zzbtp = zzbtv;
        zzbtj zzbtj = zzbtp;
        zzbth zzbth = zzbtj;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
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
                    list = zzb.zzC(parcel2, readInt);
                    break;
                case 5:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 6:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    zzbtt = (zzbtt) zzb.zza(parcel2, readInt, zzbtt.CREATOR);
                    break;
                case 9:
                    zzbtr = (zzbtr) zzb.zza(parcel2, readInt, zzbtr.CREATOR);
                    break;
                case 10:
                    zzbtx = (zzbtx) zzb.zza(parcel2, readInt, zzbtx.CREATOR);
                    break;
                case 11:
                    zzbtz = (zzbtz) zzb.zza(parcel2, readInt, zzbtz.CREATOR);
                    break;
                case 12:
                    zzbub = (zzbub) zzb.zza(parcel2, readInt, zzbub.CREATOR);
                    break;
                case 13:
                    zzbtv = (zzbtv) zzb.zza(parcel2, readInt, zzbtv.CREATOR);
                    break;
                case 14:
                    zzbtp = (zzbtp) zzb.zza(parcel2, readInt, zzbtp.CREATOR);
                    break;
                case 15:
                    zzbtj = (zzbtj) zzb.zza(parcel2, readInt, zzbtj.CREATOR);
                    break;
                case 16:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 17:
                    z3 = zzb.zzc(parcel2, readInt);
                    break;
                case 18:
                    zzbth = (zzbth) zzb.zza(parcel2, readInt, zzbth.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzbtl(str, str2, list, z, z2, z3, str3, str4, zzbtt, zzbtr, zzbtx, zzbtz, zzbub, zzbtv, zzbtp, zzbtj, zzbth);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbtl[i];
    }
}
