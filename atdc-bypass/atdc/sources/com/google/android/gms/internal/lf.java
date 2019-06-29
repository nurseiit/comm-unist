package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class lf extends zza {
    public static final Creator<lf> CREATOR = new lg();
    private final long zzbXw;
    private final boolean zzbXx;
    private final String zzbjk;

    public lf(String str, long j, boolean z) {
        this.zzbjk = str;
        this.zzbXw = j;
        this.zzbXx = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbjk, false);
        zzd.zza(parcel, 2, this.zzbXw);
        zzd.zza(parcel, 3, this.zzbXx);
        zzd.zzI(parcel, i);
    }
}
