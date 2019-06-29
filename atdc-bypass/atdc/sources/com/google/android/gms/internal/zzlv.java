package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzd;

@zzzn
public final class zzlv extends zziv {
    public zzlv(zziv zziv) {
        super(zziv.zzAs, zziv.height, zziv.heightPixels, zziv.zzAt, zziv.width, zziv.widthPixels, zziv.zzAu, zziv.zzAv, zziv.zzAw, zziv.zzAx);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzAs, false);
        zzd.zzc(parcel, 3, this.height);
        zzd.zzc(parcel, 6, this.width);
        zzd.zzI(parcel, i);
    }
}
