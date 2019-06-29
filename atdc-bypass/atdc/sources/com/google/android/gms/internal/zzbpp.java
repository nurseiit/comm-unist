package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbpp extends zza {
    public static final Creator<zzbpp> CREATOR = new zzbpu();
    private boolean zzuH;

    public zzbpp(boolean z) {
        this.zzuH = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzuH);
        zzd.zzI(parcel, i);
    }
}
