package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.List;

public final class zzbku extends zza {
    public static final Creator<zzbku> CREATOR = new zzbkv();
    private List<String> zzaMZ;

    public zzbku(List<String> list) {
        this.zzaMZ = list;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzb(parcel, 2, this.zzaMZ, false);
        zzd.zzI(parcel, i);
    }
}
