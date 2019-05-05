package com.google.android.gms.internal;

import com.google.android.gms.fitness.result.BleDevicesResult;

final class zzbxr extends zzbzl {
    private final zzbaz<BleDevicesResult> zzaIz;

    private zzbxr(zzbaz<BleDevicesResult> zzbaz) {
        this.zzaIz = zzbaz;
    }

    /* synthetic */ zzbxr(zzbaz zzbaz, zzbxl zzbxl) {
        this(zzbaz);
    }

    public final void zza(BleDevicesResult bleDevicesResult) {
        this.zzaIz.setResult(bleDevicesResult);
    }
}
