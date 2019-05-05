package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzam extends zza {
    public static final Creator<zzam> CREATOR = new zze();
    private int zzbkP;
    private int zzbkQ;

    zzam(int i, int i2) {
        this.zzbkP = i;
        this.zzbkQ = i2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzbkP);
        zzd.zzc(parcel, 2, this.zzbkQ);
        zzd.zzI(parcel, i);
    }
}
