package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbtf extends zza {
    public static final Creator<zzbtf> CREATOR = new zzbtg();
    private int mIndex;
    private String zzaRF;
    private boolean zzaRG;
    private int zzaRH;

    zzbtf(String str, int i, boolean z, int i2) {
        this.zzaRF = str;
        this.mIndex = i;
        this.zzaRG = z;
        this.zzaRH = i2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaRF, false);
        zzd.zzc(parcel, 3, this.mIndex);
        zzd.zza(parcel, 4, this.zzaRG);
        zzd.zzc(parcel, 5, this.zzaRH);
        zzd.zzI(parcel, i);
    }
}
