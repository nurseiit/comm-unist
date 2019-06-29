package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbth extends zza {
    public static final Creator<zzbth> CREATOR = new zzbti();
    private int zzaRI;

    public zzbth(int i) {
        this.zzaRI = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaRI);
        zzd.zzI(parcel, i);
    }
}
