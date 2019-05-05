package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;

public final class zzbi extends zza {
    public static final Creator<zzbi> CREATOR = new zzbj();
    private final zzbxg zzaWo;
    private Subscription zzaXr;
    private final boolean zzaXs;
    private final int zzaku;

    zzbi(int i, Subscription subscription, boolean z, IBinder iBinder) {
        this.zzaku = i;
        this.zzaXr = subscription;
        this.zzaXs = z;
        this.zzaWo = zzbxh.zzW(iBinder);
    }

    public zzbi(Subscription subscription, boolean z, zzbxg zzbxg) {
        this.zzaku = 3;
        this.zzaXr = subscription;
        this.zzaXs = false;
        this.zzaWo = zzbxg;
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("subscription", this.zzaXr).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaXr, i, false);
        zzd.zza(parcel, 2, this.zzaXs);
        zzd.zza(parcel, 3, this.zzaWo == null ? null : this.zzaWo.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
