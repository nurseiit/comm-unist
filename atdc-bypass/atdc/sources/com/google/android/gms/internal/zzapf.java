package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.List;

public final class zzapf extends zza implements Result {
    public static final Creator<zzapf> CREATOR = new zzapg();
    private Status zzajl;
    private List<zzapl> zzajm;
    @Deprecated
    private String[] zzajn;

    zzapf(Status status, List<zzapl> list, String[] strArr) {
        this.zzajl = status;
        this.zzajm = list;
        this.zzajn = strArr;
    }

    public final Status getStatus() {
        return this.zzajl;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzajl, i, false);
        zzd.zzc(parcel, 2, this.zzajm, false);
        zzd.zza(parcel, 3, this.zzajn, false);
        zzd.zzI(parcel, zze);
    }
}
