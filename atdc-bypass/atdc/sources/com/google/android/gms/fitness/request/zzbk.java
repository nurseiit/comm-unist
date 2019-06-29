package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;

public final class zzbk extends zza {
    public static final Creator<zzbk> CREATOR = new zzbl();
    private final String zzaWm;
    private final zzbxg zzaWo;
    private final int zzaku;

    zzbk(int i, String str, IBinder iBinder) {
        this.zzaku = i;
        this.zzaWm = str;
        this.zzaWo = zzbxh.zzW(iBinder);
    }

    public zzbk(String str, zzbxg zzbxg) {
        this.zzaku = 5;
        this.zzaWm = str;
        this.zzaWo = zzbxg;
    }

    public final String toString() {
        return String.format("UnclaimBleDeviceRequest{%s}", new Object[]{this.zzaWm});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaWm, false);
        zzd.zza(parcel, 3, this.zzaWo == null ? null : this.zzaWo.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
