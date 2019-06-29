package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzt extends zza {
    public static final Creator<zzt> CREATOR = new zzu();

    public final void writeToParcel(Parcel parcel, int i) {
        zzd.zzI(parcel, zzd.zze(parcel));
    }

    public final <F> F zza(zzj<F> zzj) {
        return zzj.zztv();
    }
}
