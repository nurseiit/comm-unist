package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbub extends zza {
    public static final Creator<zzbub> CREATOR = new zzbuc();
    private int mIndex;
    private int zzaRJ;
    private int zzaRK;

    public zzbub(int i, int i2, int i3) {
        this.mIndex = i;
        this.zzaRJ = i2;
        this.zzaRK = i3;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.mIndex);
        zzd.zzc(parcel, 3, this.zzaRJ);
        zzd.zzc(parcel, 4, this.zzaRK);
        zzd.zzI(parcel, i);
    }
}
