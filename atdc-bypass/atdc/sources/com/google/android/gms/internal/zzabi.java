package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

@zzzn
public final class zzabi extends zza {
    public static final Creator<zzabi> CREATOR = new zzabj();
    String zzHg;

    public zzabi(String str) {
        this.zzHg = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzHg, false);
        zzd.zzI(parcel, i);
    }
}
