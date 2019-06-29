package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzd implements Creator<GroundOverlayOptions> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        IBinder iBinder = null;
        LatLng latLng = iBinder;
        LatLngBounds latLngBounds = latLng;
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        boolean z = false;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    iBinder = zzb.zzr(parcel2, readInt);
                    break;
                case 3:
                    latLng = (LatLng) zzb.zza(parcel2, readInt, LatLng.CREATOR);
                    break;
                case 4:
                    f = zzb.zzl(parcel2, readInt);
                    break;
                case 5:
                    f2 = zzb.zzl(parcel2, readInt);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) zzb.zza(parcel2, readInt, LatLngBounds.CREATOR);
                    break;
                case 7:
                    f3 = zzb.zzl(parcel2, readInt);
                    break;
                case 8:
                    f4 = zzb.zzl(parcel2, readInt);
                    break;
                case 9:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 10:
                    f5 = zzb.zzl(parcel2, readInt);
                    break;
                case 11:
                    f6 = zzb.zzl(parcel2, readInt);
                    break;
                case 12:
                    f7 = zzb.zzl(parcel2, readInt);
                    break;
                case 13:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new GroundOverlayOptions(iBinder, latLng, f, f2, latLngBounds, f3, f4, z, f5, f6, f7, z2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new GroundOverlayOptions[i];
    }
}
