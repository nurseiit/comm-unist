package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzblm extends zza {
    public static final Creator<zzblm> CREATOR = new zzbln();

    public final void writeToParcel(Parcel parcel, int i) {
        zzd.zzI(parcel, zzd.zze(parcel));
    }
}
