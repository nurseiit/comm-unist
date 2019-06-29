package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbhw extends zza {
    public static final Creator<zzbhw> CREATOR = new zzbhx();
    private final String mName;
    private final String mValue;

    public zzbhw(String str, String str2) {
        this.mName = str;
        this.mValue = str2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.mName, false);
        zzd.zza(parcel, 3, this.mValue, false);
        zzd.zzI(parcel, i);
    }
}
