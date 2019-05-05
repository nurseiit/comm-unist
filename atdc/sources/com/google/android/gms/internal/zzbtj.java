package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbtj extends zza {
    public static final Creator<zzbtj> CREATOR = new zzbtk();
    private int zzaRJ;
    private int zzaRK;

    public zzbtj(int i, int i2) {
        this.zzaRJ = i;
        this.zzaRK = i2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaRJ);
        zzd.zzc(parcel, 3, this.zzaRK);
        zzd.zzI(parcel, i);
    }
}
