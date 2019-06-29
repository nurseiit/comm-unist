package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzt extends zza {
    public static final Creator<zzt> CREATOR = new zzu();
    private final String zzbie;
    private final String zzbif;
    private final int zzbig;
    private final boolean zzbih;

    zzt(String str, String str2, int i, boolean z) {
        this.zzbie = str;
        this.zzbif = str2;
        this.zzbig = i;
        this.zzbih = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbie, false);
        zzd.zza(parcel, 2, this.zzbif, false);
        zzd.zzc(parcel, 3, this.zzbig);
        zzd.zza(parcel, 4, this.zzbih);
        zzd.zzI(parcel, i);
    }
}
