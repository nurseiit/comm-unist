package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.zzc;

public final class zzbky extends zza {
    public static final Creator<zzbky> CREATOR = new zzbkz();
    private zzc zzaNv;
    private int zzaNx;
    private Boolean zzaNz;

    public zzbky(int i, boolean z) {
        this(null, Boolean.valueOf(false), i);
    }

    zzbky(zzc zzc, Boolean bool, int i) {
        this.zzaNv = zzc;
        this.zzaNz = bool;
        this.zzaNx = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaNv, i, false);
        zzd.zza(parcel, 3, this.zzaNz, false);
        zzd.zzc(parcel, 4, this.zzaNx);
        zzd.zzI(parcel, zze);
    }
}
