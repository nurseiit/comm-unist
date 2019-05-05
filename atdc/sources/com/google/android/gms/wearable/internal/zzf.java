package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzf extends zza {
    public static final Creator<zzf> CREATOR = new zzg();
    public final int statusCode;

    public zzf(int i) {
        this.statusCode = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.statusCode);
        zzd.zzI(parcel, i);
    }
}
