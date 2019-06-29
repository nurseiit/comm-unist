package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.zzc;

public final class zzboz extends zza {
    public static final Creator<zzboz> CREATOR = new zzbpa();
    final boolean zzaOV;
    final zzc zzaOg;

    public zzboz(zzc zzc, boolean z) {
        this.zzaOg = zzc;
        this.zzaOV = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaOg, i, false);
        zzd.zza(parcel, 3, this.zzaOV);
        zzd.zzI(parcel, zze);
    }
}
