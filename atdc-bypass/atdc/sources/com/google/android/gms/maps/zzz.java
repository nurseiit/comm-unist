package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;

public final class zzz implements Creator<GoogleMapOptions> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        CameraPosition cameraPosition = null;
        Float f = cameraPosition;
        Float f2 = f;
        LatLngBounds latLngBounds = f2;
        byte b = (byte) -1;
        byte b2 = (byte) -1;
        int i = 0;
        byte b3 = (byte) -1;
        byte b4 = (byte) -1;
        byte b5 = (byte) -1;
        byte b6 = (byte) -1;
        byte b7 = (byte) -1;
        byte b8 = (byte) -1;
        byte b9 = (byte) -1;
        byte b10 = (byte) -1;
        byte b11 = (byte) -1;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    b = zzb.zze(parcel2, readInt);
                    break;
                case 3:
                    b2 = zzb.zze(parcel2, readInt);
                    break;
                case 4:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 5:
                    cameraPosition = (CameraPosition) zzb.zza(parcel2, readInt, CameraPosition.CREATOR);
                    break;
                case 6:
                    b3 = zzb.zze(parcel2, readInt);
                    break;
                case 7:
                    b4 = zzb.zze(parcel2, readInt);
                    break;
                case 8:
                    b5 = zzb.zze(parcel2, readInt);
                    break;
                case 9:
                    b6 = zzb.zze(parcel2, readInt);
                    break;
                case 10:
                    b7 = zzb.zze(parcel2, readInt);
                    break;
                case 11:
                    b8 = zzb.zze(parcel2, readInt);
                    break;
                case 12:
                    b9 = zzb.zze(parcel2, readInt);
                    break;
                case 14:
                    b10 = zzb.zze(parcel2, readInt);
                    break;
                case 15:
                    b11 = zzb.zze(parcel2, readInt);
                    break;
                case 16:
                    f = zzb.zzm(parcel2, readInt);
                    break;
                case 17:
                    f2 = zzb.zzm(parcel2, readInt);
                    break;
                case 18:
                    latLngBounds = (LatLngBounds) zzb.zza(parcel2, readInt, LatLngBounds.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new GoogleMapOptions(b, b2, i, cameraPosition, b3, b4, b5, b6, b7, b8, b9, b10, b11, f, f2, latLngBounds);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new GoogleMapOptions[i];
    }
}
