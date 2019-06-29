package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzcat extends zza {
    public static final Creator<zzcat> CREATOR = new zzcau();
    private String packageName;
    private int versionCode;
    private String zzbfs;

    zzcat(int i, String str, String str2) {
        this.versionCode = i;
        this.packageName = str;
        this.zzbfs = str2;
    }

    public zzcat(String str, String str2) {
        this(1, str, str2);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.versionCode);
        zzd.zza(parcel, 2, this.packageName, false);
        zzd.zza(parcel, 3, this.zzbfs, false);
        zzd.zzI(parcel, i);
    }
}
