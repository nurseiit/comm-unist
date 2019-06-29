package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;

public final class zzz extends zza {
    public static final Creator<zzz> CREATOR = new zzaa();
    private final zzbxg zzaWo;
    private final int zzaku;

    zzz(int i, IBinder iBinder) {
        this.zzaku = i;
        this.zzaWo = zzbxh.zzW(iBinder);
    }

    public zzz(zzbxg zzbxg) {
        this.zzaku = 2;
        this.zzaWo = zzbxg;
    }

    public final String toString() {
        return String.format("DisableFitRequest", new Object[0]);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaWo.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
