package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zi extends zza {
    public static final Creator<zi> CREATOR = new zj();
    private String zzcjS;
    private String zzcjT;
    private int zzcjU;
    private long zzcjV = 0;
    private Bundle zzcjW = null;
    private Uri zzcjX;

    public zi(String str, String str2, int i, long j, Bundle bundle, Uri uri) {
        this.zzcjS = str;
        this.zzcjT = str2;
        this.zzcjU = i;
        this.zzcjV = j;
        this.zzcjW = bundle;
        this.zzcjX = uri;
    }

    public final long getClickTimestamp() {
        return this.zzcjV;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzcjS, false);
        zzd.zza(parcel, 2, this.zzcjT, false);
        zzd.zzc(parcel, 3, this.zzcjU);
        zzd.zza(parcel, 4, this.zzcjV);
        zzd.zza(parcel, 5, zzJN(), false);
        zzd.zza(parcel, 6, this.zzcjX, i, false);
        zzd.zzI(parcel, zze);
    }

    public final Uri zzJK() {
        return this.zzcjX;
    }

    public final String zzJL() {
        return this.zzcjT;
    }

    public final int zzJM() {
        return this.zzcjU;
    }

    public final Bundle zzJN() {
        return this.zzcjW == null ? new Bundle() : this.zzcjW;
    }

    public final void zzaA(long j) {
        this.zzcjV = j;
    }
}
