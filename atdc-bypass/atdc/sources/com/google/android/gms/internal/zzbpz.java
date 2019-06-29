package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbpz extends zza {
    public static final Creator<zzbpz> CREATOR = new zzbqa();
    private boolean zzaNP;

    public zzbpz(boolean z) {
        this.zzaNP = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaNP);
        zzd.zzI(parcel, i);
    }
}
