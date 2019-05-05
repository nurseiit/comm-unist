package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbry extends zza {
    public static final Creator<zzbry> CREATOR = new zzbrz();
    private String mName;
    private boolean zzaRD;
    private boolean zzaRE;

    public zzbry(boolean z, String str, boolean z2) {
        this.zzaRD = z;
        this.mName = str;
        this.zzaRE = z2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaRD);
        zzd.zza(parcel, 3, this.mName, false);
        zzd.zza(parcel, 4, this.zzaRE);
        zzd.zzI(parcel, i);
    }
}
