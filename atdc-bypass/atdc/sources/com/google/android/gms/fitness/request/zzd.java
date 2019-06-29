package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;

public final class zzd extends zza {
    public static final Creator<zzd> CREATOR = new zze();
    private final String zzaWm;
    private final BleDevice zzaWn;
    private final zzbxg zzaWo;
    private final int zzaku;

    zzd(int i, String str, BleDevice bleDevice, IBinder iBinder) {
        this.zzaku = i;
        this.zzaWm = str;
        this.zzaWn = bleDevice;
        this.zzaWo = zzbxh.zzW(iBinder);
    }

    public zzd(String str, BleDevice bleDevice, zzbxg zzbxg) {
        this.zzaku = 4;
        this.zzaWm = str;
        this.zzaWn = bleDevice;
        this.zzaWo = zzbxg;
    }

    public final String toString() {
        return String.format("ClaimBleDeviceRequest{%s %s}", new Object[]{this.zzaWm, this.zzaWn});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = com.google.android.gms.common.internal.safeparcel.zzd.zze(parcel);
        com.google.android.gms.common.internal.safeparcel.zzd.zza(parcel, 1, this.zzaWm, false);
        com.google.android.gms.common.internal.safeparcel.zzd.zza(parcel, 2, this.zzaWn, i, false);
        com.google.android.gms.common.internal.safeparcel.zzd.zza(parcel, 3, this.zzaWo == null ? null : this.zzaWo.asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzd.zzc(parcel, 1000, this.zzaku);
        com.google.android.gms.common.internal.safeparcel.zzd.zzI(parcel, zze);
    }
}
