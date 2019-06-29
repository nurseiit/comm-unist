package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzq extends zza {
    public static final Creator<zzq> CREATOR = new zzr();
    final String zzaMh;
    final long zzaMi;
    final int zzaMj;

    public zzq(String str, long j, int i) {
        this.zzaMh = str;
        this.zzaMi = j;
        this.zzaMj = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaMh, false);
        zzd.zza(parcel, 3, this.zzaMi);
        zzd.zzc(parcel, 4, this.zzaMj);
        zzd.zzI(parcel, i);
    }
}
