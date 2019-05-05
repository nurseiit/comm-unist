package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class zzb implements Creator<zza> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        Bundle bundle = null;
        float f = 0.0f;
        float f2 = 0.0f;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel2, readInt);
                    break;
                case 2:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel2, readInt);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, readInt);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, readInt);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, readInt);
                    break;
                case 6:
                    f3 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel2, readInt);
                    break;
                case 7:
                    f4 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel2, readInt);
                    break;
                case 8:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel2, readInt);
                    break;
                case 9:
                    f5 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel2, readInt);
                    break;
                case 10:
                    f6 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel2, readInt);
                    break;
                case 11:
                    f7 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel2, readInt);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel2, zzd);
        return new zza(f, f2, i, i2, i3, f3, f4, bundle, f5, f6, f7);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zza[i];
    }
}
