package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

@Deprecated
public final class zzbjh extends zza {
    public static final Creator<zzbjh> CREATOR = new zzbji();
    public final String key;
    public final boolean zzaLi;

    public zzbjh(boolean z, String str) {
        this.zzaLi = z;
        this.key = zzbo.zzcF(str);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaLi);
        zzd.zza(parcel, 3, this.key, false);
        zzd.zzI(parcel, i);
    }
}
