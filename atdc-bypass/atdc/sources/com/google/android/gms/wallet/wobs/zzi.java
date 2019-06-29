package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class zzi implements Creator<zzh> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        double d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        long j = 0;
        int i = 0;
        int i2 = -1;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 3:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    d = zzb.zzn(parcel2, readInt);
                    break;
                case 5:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 7:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzh(i, str, d, str2, j, i2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzh[i];
    }
}
