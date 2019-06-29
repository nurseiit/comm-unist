package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzapi extends zza {
    public static final Creator<zzapi> CREATOR = new zzapk();
    private String name;
    private int weight;
    private String zzajq;
    private boolean zzajr;
    private boolean zzajs;
    private String zzajt;
    private zzapd[] zzaju;
    private int[] zzajv;
    private String zzajw;

    zzapi(String str, String str2, boolean z, int i, boolean z2, String str3, zzapd[] zzapdArr, int[] iArr, String str4) {
        this.name = str;
        this.zzajq = str2;
        this.zzajr = z;
        this.weight = i;
        this.zzajs = z2;
        this.zzajt = str3;
        this.zzaju = zzapdArr;
        this.zzajv = iArr;
        this.zzajw = str4;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.name, false);
        zzd.zza(parcel, 2, this.zzajq, false);
        zzd.zza(parcel, 3, this.zzajr);
        zzd.zzc(parcel, 4, this.weight);
        zzd.zza(parcel, 5, this.zzajs);
        zzd.zza(parcel, 6, this.zzajt, false);
        zzd.zza(parcel, 7, this.zzaju, i, false);
        zzd.zza(parcel, 8, this.zzajv, false);
        zzd.zza(parcel, 11, this.zzajw, false);
        zzd.zzI(parcel, zze);
    }
}
