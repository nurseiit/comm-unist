package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

@zzzn
public final class zzadj extends zza {
    public static final Creator<zzadj> CREATOR = new zzadk();
    public final zzir zzSz;
    public final String zzvR;

    public zzadj(zzir zzir, String str) {
        this.zzSz = zzir;
        this.zzvR = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzSz, i, false);
        zzd.zza(parcel, 3, this.zzvR, false);
        zzd.zzI(parcel, zze);
    }
}
