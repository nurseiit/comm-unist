package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class fu implements Creator<ft> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        fo[] foVarArr = null;
        fe feVar = foVarArr;
        fe feVar2 = feVar;
        String str = feVar2;
        String str2 = str;
        float f = 0.0f;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    foVarArr = (fo[]) zzb.zzb(parcel, readInt, fo.CREATOR);
                    break;
                case 3:
                    feVar = (fe) zzb.zza(parcel, readInt, fe.CREATOR);
                    break;
                case 4:
                    feVar2 = (fe) zzb.zza(parcel, readInt, fe.CREATOR);
                    break;
                case 5:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 6:
                    f = zzb.zzl(parcel, readInt);
                    break;
                case 7:
                    str2 = zzb.zzq(parcel, readInt);
                    break;
                case 8:
                    z = zzb.zzc(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new ft(foVarArr, feVar, feVar2, str, f, str2, z);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new ft[i];
    }
}
