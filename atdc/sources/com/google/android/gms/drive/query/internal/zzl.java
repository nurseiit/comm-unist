package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzl extends zza {
    public static final Creator<zzl> CREATOR = new zzm();
    private String mValue;

    public zzl(String str) {
        this.mValue = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.mValue, false);
        zzd.zzI(parcel, i);
    }

    public final <F> F zza(zzj<F> zzj) {
        return zzj.zzcU(this.mValue);
    }
}
