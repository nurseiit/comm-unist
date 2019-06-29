package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzq implements Creator<LocationRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 3600000;
        long j2 = 600000;
        long j3 = Long.MAX_VALUE;
        long j4 = 0;
        int i = 102;
        boolean z = false;
        int i2 = Integer.MAX_VALUE;
        float f = 0.0f;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 2:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 3:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 4:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 5:
                    j3 = zzb.zzi(parcel2, readInt);
                    break;
                case 6:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 7:
                    f = zzb.zzl(parcel2, readInt);
                    break;
                case 8:
                    j4 = zzb.zzi(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new LocationRequest(i, j, j2, z, j3, i2, f, j4);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new LocationRequest[i];
    }
}
