package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzaoz extends zza {
    public static final Creator<zzaoz> CREATOR = new zzapa();
    private String mPackageName;
    private String zzajc;
    private String zzajd;

    public zzaoz(String str, String str2, String str3) {
        this.mPackageName = str;
        this.zzajc = str2;
        this.zzajd = str3;
    }

    public final String toString() {
        return String.format("DocumentId[packageName=%s, corpusName=%s, uri=%s]", new Object[]{this.mPackageName, this.zzajc, this.zzajd});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.mPackageName, false);
        zzd.zza(parcel, 2, this.zzajc, false);
        zzd.zza(parcel, 3, this.zzajd, false);
        zzd.zzI(parcel, i);
    }
}
