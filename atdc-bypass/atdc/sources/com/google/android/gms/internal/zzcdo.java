package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public final class zzcdo implements Creator<zzcdn> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = zzcdn.zzbiU;
        LocationRequest locationRequest = null;
        String str = locationRequest;
        String str2 = str;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i != 1) {
                switch (i) {
                    case 5:
                        list = zzb.zzc(parcel, readInt, zzcbz.CREATOR);
                        break;
                    case 6:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    case 7:
                        z = zzb.zzc(parcel, readInt);
                        break;
                    case 8:
                        z2 = zzb.zzc(parcel, readInt);
                        break;
                    case 9:
                        z3 = zzb.zzc(parcel, readInt);
                        break;
                    case 10:
                        str2 = zzb.zzq(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            locationRequest = (LocationRequest) zzb.zza(parcel, readInt, LocationRequest.CREATOR);
        }
        zzb.zzF(parcel, zzd);
        return new zzcdn(locationRequest, list, str, z, z2, z3, str2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcdn[i];
    }
}
