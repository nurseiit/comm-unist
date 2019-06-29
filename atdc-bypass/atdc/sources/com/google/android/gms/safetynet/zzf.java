package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzf extends zza {
    public static final Creator<zzf> CREATOR = new zzg();
    private final String zzakv;

    public zzf(String str) {
        this.zzakv = str;
    }

    public final String getTokenResult() {
        return this.zzakv;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzakv, false);
        zzd.zzI(parcel, i);
    }
}
