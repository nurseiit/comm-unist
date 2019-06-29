package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.List;

public final class zzc implements Creator<CircleOptions> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        LatLng latLng = null;
        List list = latLng;
        double d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    latLng = (LatLng) zzb.zza(parcel2, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    d = zzb.zzn(parcel2, readInt);
                    break;
                case 4:
                    f = zzb.zzl(parcel2, readInt);
                    break;
                case 5:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 6:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 7:
                    f2 = zzb.zzl(parcel2, readInt);
                    break;
                case 8:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 9:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 10:
                    list = zzb.zzc(parcel2, readInt, PatternItem.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new CircleOptions(latLng, d, f, i, i2, f2, z, z2, list);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new CircleOptions[i];
    }
}
