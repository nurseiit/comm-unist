package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbp;

public final class zzctv extends zza {
    public static final Creator<zzctv> CREATOR = new zzctw();
    private int zzaku;
    private zzbp zzbCU;

    zzctv(int i, zzbp zzbp) {
        this.zzaku = i;
        this.zzbCU = zzbp;
    }

    public zzctv(zzbp zzbp) {
        this(1, zzbp);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zza(parcel, 2, this.zzbCU, i, false);
        zzd.zzI(parcel, zze);
    }
}
