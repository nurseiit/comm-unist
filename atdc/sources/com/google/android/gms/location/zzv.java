package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzv implements Creator<LocationSettingsRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        boolean z = false;
        List list = null;
        zzt zzt = null;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i != 5) {
                switch (i) {
                    case 1:
                        list = zzb.zzc(parcel, readInt, LocationRequest.CREATOR);
                        break;
                    case 2:
                        z = zzb.zzc(parcel, readInt);
                        break;
                    case 3:
                        z2 = zzb.zzc(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            zzt = (zzt) zzb.zza(parcel, readInt, zzt.CREATOR);
        }
        zzb.zzF(parcel, zzd);
        return new LocationSettingsRequest(list, z, z2, zzt);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new LocationSettingsRequest[i];
    }
}
