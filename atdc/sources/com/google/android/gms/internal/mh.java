package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class mh extends zza {
    public static final Creator<mh> CREATOR = new mi();
    private String zzbVj;
    private String zzbYl;

    public mh(String str, String str2) {
        this.zzbYl = str;
        this.zzbVj = str2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzbYl, false);
        zzd.zza(parcel, 3, this.zzbVj, false);
        zzd.zzI(parcel, i);
    }
}
