package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.List;

public final class zzb implements Creator<CastOptions> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        String str = null;
        List list = str;
        LaunchOptions launchOptions = list;
        CastMediaOptions castMediaOptions = launchOptions;
        double d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    list = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel2, readInt);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, readInt);
                    break;
                case 5:
                    launchOptions = (LaunchOptions) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, LaunchOptions.CREATOR);
                    break;
                case 6:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, readInt);
                    break;
                case 7:
                    castMediaOptions = (CastMediaOptions) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, CastMediaOptions.CREATOR);
                    break;
                case 8:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, readInt);
                    break;
                case 9:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel2, readInt);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel2, zzd);
        return new CastOptions(str, list, z, launchOptions, z2, castMediaOptions, z3, d);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new CastOptions[i];
    }
}
