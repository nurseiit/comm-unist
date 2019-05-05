package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.List;

public final class zzbhy extends zza {
    public static final Creator<zzbhy> CREATOR = new zzbhz();
    private final String mPackageName;
    private final long zzaKB;
    private final DataHolder zzaKC;
    private final String zzaKD;
    private final String zzaKE;
    private final String zzaKF;
    private final List<String> zzaKG;
    private final int zzaKo;
    private final List<zzbhi> zzaKp;
    private final int zzaKq;
    private final int zzaKr;

    public zzbhy(String str, long j, DataHolder dataHolder, String str2, String str3, String str4, List<String> list, int i, List<zzbhi> list2, int i2, int i3) {
        this.mPackageName = str;
        this.zzaKB = j;
        this.zzaKC = dataHolder;
        this.zzaKD = str2;
        this.zzaKE = str3;
        this.zzaKF = str4;
        this.zzaKG = list;
        this.zzaKo = i;
        this.zzaKp = list2;
        this.zzaKr = i2;
        this.zzaKq = i3;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.mPackageName, false);
        zzd.zza(parcel, 3, this.zzaKB);
        zzd.zza(parcel, 4, this.zzaKC, i, false);
        zzd.zza(parcel, 5, this.zzaKD, false);
        zzd.zza(parcel, 6, this.zzaKE, false);
        zzd.zza(parcel, 7, this.zzaKF, false);
        zzd.zzb(parcel, 8, this.zzaKG, false);
        zzd.zzc(parcel, 9, this.zzaKo);
        zzd.zzc(parcel, 10, this.zzaKp, false);
        zzd.zzc(parcel, 11, this.zzaKr);
        zzd.zzc(parcel, 12, this.zzaKq);
        zzd.zzI(parcel, zze);
    }
}
