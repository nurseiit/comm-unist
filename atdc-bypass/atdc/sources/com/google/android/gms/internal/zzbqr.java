package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.List;

public final class zzbqr extends zza {
    public static final Creator<zzbqr> CREATOR = new zzbqs();
    private final List<String> zzaPv;

    public zzbqr(List<String> list) {
        this.zzaPv = list;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzb(parcel, 2, this.zzaPv, false);
        zzd.zzI(parcel, i);
    }
}
