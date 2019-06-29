package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class kw implements Creator<kv> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        lb lbVar = str4;
        String str5 = lbVar;
        String str6 = str5;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel, readInt);
                    break;
                case 4:
                    z = zzb.zzc(parcel, readInt);
                    break;
                case 5:
                    str3 = zzb.zzq(parcel, readInt);
                    break;
                case 6:
                    str4 = zzb.zzq(parcel, readInt);
                    break;
                case 7:
                    lbVar = (lb) zzb.zza(parcel, readInt, lb.CREATOR);
                    break;
                case 8:
                    str5 = zzb.zzq(parcel, readInt);
                    break;
                case 9:
                    str6 = zzb.zzq(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new kv(str, str2, z, str3, str4, lbVar, str5, str6);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new kv[i];
    }
}
