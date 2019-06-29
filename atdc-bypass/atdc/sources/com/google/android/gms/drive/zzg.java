package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzg extends zza {
    public static final Creator<zzg> CREATOR = new zzh();
    private long zzaMf;
    private long zzaMg;

    public zzg(long j, long j2) {
        this.zzaMf = j;
        this.zzaMg = j2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaMf);
        zzd.zza(parcel, 3, this.zzaMg);
        zzd.zzI(parcel, i);
    }
}
