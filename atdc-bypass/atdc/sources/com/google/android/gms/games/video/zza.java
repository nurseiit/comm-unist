package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zza implements Creator<VideoCapabilities> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        boolean[] zArr = null;
        boolean[] zArr2 = zArr;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    z = zzb.zzc(parcel, readInt);
                    break;
                case 2:
                    z2 = zzb.zzc(parcel, readInt);
                    break;
                case 3:
                    z3 = zzb.zzc(parcel, readInt);
                    break;
                case 4:
                    zArr = zzb.zzv(parcel, readInt);
                    break;
                case 5:
                    zArr2 = zzb.zzv(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new VideoCapabilities(z, z2, z3, zArr, zArr2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new VideoCapabilities[i];
    }
}
