package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbtx extends zza {
    public static final Creator<zzbtx> CREATOR = new zzbty();
    private int mIndex;
    private int zzaRJ;
    private int zzaRK;
    private String zzaSi;
    private int zzaSj;

    zzbtx(int i, int i2, int i3, String str, int i4) {
        this.mIndex = i;
        this.zzaRJ = i2;
        this.zzaRK = i3;
        this.zzaSi = str;
        this.zzaSj = i4;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.mIndex);
        zzd.zzc(parcel, 3, this.zzaRJ);
        zzd.zzc(parcel, 4, this.zzaRK);
        zzd.zza(parcel, 5, this.zzaSi, false);
        zzd.zzc(parcel, 6, this.zzaSj);
        zzd.zzI(parcel, i);
    }
}
