package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.internal.zzcri.zzb;
import com.google.android.gms.internal.zzcri.zzb.zza;
import java.util.HashSet;

public final class zzcrl implements Creator<zzb> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        zza zza = null;
        zzb.zzb zzb = zza;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, readInt);
                    readInt = 1;
                    break;
                case 2:
                    zza = (zza) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, readInt, zza.CREATOR);
                    readInt = 2;
                    break;
                case 3:
                    zzb = (zzb.zzb) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, readInt, zzb.zzb.CREATOR);
                    readInt = 3;
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, readInt);
                    readInt = 4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, readInt);
                    continue;
            }
            hashSet.add(Integer.valueOf(readInt));
        }
        if (parcel.dataPosition() == zzd) {
            return new zzb(hashSet, i, zza, zzb, i2);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzd);
        throw new zzc(stringBuilder.toString(), parcel);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzb[i];
    }
}
