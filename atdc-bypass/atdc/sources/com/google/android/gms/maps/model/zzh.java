package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzh implements Creator<MarkerOptions> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        LatLng latLng = null;
        String str = latLng;
        String str2 = str;
        IBinder iBinder = str2;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f3 = 0.0f;
        float f4 = 0.5f;
        float f5 = 0.0f;
        float f6 = 1.0f;
        float f7 = 0.0f;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    latLng = (LatLng) zzb.zza(parcel2, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    iBinder = zzb.zzr(parcel2, readInt);
                    break;
                case 6:
                    f = zzb.zzl(parcel2, readInt);
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
                    z3 = zzb.zzc(parcel2, readInt);
                    break;
                case 11:
                    f3 = zzb.zzl(parcel2, readInt);
                    break;
                case 12:
                    f4 = zzb.zzl(parcel2, readInt);
                    break;
                case 13:
                    f5 = zzb.zzl(parcel2, readInt);
                    break;
                case 14:
                    f6 = zzb.zzl(parcel2, readInt);
                    break;
                case 15:
                    f7 = zzb.zzl(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new MarkerOptions(latLng, str, str2, iBinder, f, f2, z, z2, z3, f3, f4, f5, f6, f7);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new MarkerOptions[i];
    }
}
