package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.List;

public final class zzbpv extends zza {
    public static final Creator<zzbpv> CREATOR = new zzbpw();
    private final List<String> zzaPl;

    zzbpv(List<String> list) {
        this.zzaPl = list;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzb(parcel, 2, this.zzaPl, false);
        zzd.zzI(parcel, i);
    }
}
