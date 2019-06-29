package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

@zzzn
public final class zzky extends zza {
    public static final Creator<zzky> CREATOR = new zzkz();
    public final int zzAR;

    public zzky(int i) {
        this.zzAR = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzAR);
        zzd.zzI(parcel, i);
    }
}
