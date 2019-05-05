package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzd extends zza {
    public static final Creator<zzd> CREATOR = new zze();
    public final long zzbBG;
    public final HarmfulAppsData[] zzbBH;

    public zzd(long j, HarmfulAppsData[] harmfulAppsDataArr) {
        this.zzbBG = j;
        this.zzbBH = harmfulAppsDataArr;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = com.google.android.gms.common.internal.safeparcel.zzd.zze(parcel);
        com.google.android.gms.common.internal.safeparcel.zzd.zza(parcel, 2, this.zzbBG);
        com.google.android.gms.common.internal.safeparcel.zzd.zza(parcel, 3, this.zzbBH, i, false);
        com.google.android.gms.common.internal.safeparcel.zzd.zzI(parcel, zze);
    }
}
