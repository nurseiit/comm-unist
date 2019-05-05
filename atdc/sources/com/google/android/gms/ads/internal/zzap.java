package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class zzap extends zza {
    public static final Creator<zzap> CREATOR = new zzaq();
    public final boolean zzur;
    public final boolean zzus;
    private String zzut;
    public final boolean zzuu;
    public final float zzuv;
    public final int zzuw;
    public final boolean zzux;

    zzap(boolean z, boolean z2, String str, boolean z3, float f, int i, boolean z4) {
        this.zzur = z;
        this.zzus = z2;
        this.zzut = str;
        this.zzuu = z3;
        this.zzuv = f;
        this.zzuw = i;
        this.zzux = z4;
    }

    public zzap(boolean z, boolean z2, boolean z3, float f, int i, boolean z4) {
        this(z, z2, null, z3, f, i, z4);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzur);
        zzd.zza(parcel, 3, this.zzus);
        zzd.zza(parcel, 4, this.zzut, false);
        zzd.zza(parcel, 5, this.zzuu);
        zzd.zza(parcel, 6, this.zzuv);
        zzd.zzc(parcel, 7, this.zzuw);
        zzd.zza(parcel, 8, this.zzux);
        zzd.zzI(parcel, i);
    }
}
