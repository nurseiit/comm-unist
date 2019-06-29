package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class zzcds implements Creator<zzcdr> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        double d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        double d2 = d;
        String str = null;
        long j = 0;
        int i = 0;
        short s = (short) 0;
        float f = 0.0f;
        int i2 = 0;
        int i3 = -1;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 2:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 3:
                    s = zzb.zzf(parcel2, readInt);
                    break;
                case 4:
                    d = zzb.zzn(parcel2, readInt);
                    break;
                case 5:
                    d2 = zzb.zzn(parcel2, readInt);
                    break;
                case 6:
                    f = zzb.zzl(parcel2, readInt);
                    break;
                case 7:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 8:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 9:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzcdr(str, i, s, d, d2, f, j, i2, i3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcdr[i];
    }
}
