package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zziw implements Creator<zziv> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        zziv[] zzivArr = str;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 3:
                    i = zzb.zzg(parcel, readInt);
                    break;
                case 4:
                    i2 = zzb.zzg(parcel, readInt);
                    break;
                case 5:
                    z = zzb.zzc(parcel, readInt);
                    break;
                case 6:
                    i3 = zzb.zzg(parcel, readInt);
                    break;
                case 7:
                    i4 = zzb.zzg(parcel, readInt);
                    break;
                case 8:
                    zzivArr = (zziv[]) zzb.zzb(parcel, readInt, zziv.CREATOR);
                    break;
                case 9:
                    z2 = zzb.zzc(parcel, readInt);
                    break;
                case 10:
                    z3 = zzb.zzc(parcel, readInt);
                    break;
                case 11:
                    z4 = zzb.zzc(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zziv(str, i, i2, z, i3, i4, zzivArr, z2, z3, z4);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zziv[i];
    }
}
