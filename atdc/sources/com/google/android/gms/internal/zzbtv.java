package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbtv extends zza {
    public static final Creator<zzbtv> CREATOR = new zzbtw();
    private int zzaRI;

    public zzbtv(int i) {
        this.zzaRI = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaRI);
        zzd.zzI(parcel, i);
    }
}
