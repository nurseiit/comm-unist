package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcoc extends zza {
    public static final Creator<zzcoc> CREATOR = new zzcod();
    private final String zzbwG;
    private final zzcoo zzbxr;
    private final boolean zzbxs;

    public zzcoc(String str, zzcoo zzcoo, boolean z) {
        this.zzbwG = str;
        this.zzbxr = zzcoo;
        this.zzbxs = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcoc) {
            zzcoc zzcoc = (zzcoc) obj;
            return zzbe.equal(this.zzbwG, zzcoc.zzbwG) && zzbe.equal(this.zzbxr, zzcoc.zzbxr) && zzbe.equal(Boolean.valueOf(this.zzbxs), Boolean.valueOf(zzcoc.zzbxs));
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwG, this.zzbxr, Boolean.valueOf(this.zzbxs)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbwG, false);
        zzd.zza(parcel, 2, this.zzbxr, i, false);
        zzd.zza(parcel, 3, this.zzbxs);
        zzd.zzI(parcel, zze);
    }

    public final String zzzF() {
        return this.zzbwG;
    }

    public final zzcoo zzzK() {
        return this.zzbxr;
    }

    public final boolean zzzL() {
        return this.zzbxs;
    }
}
