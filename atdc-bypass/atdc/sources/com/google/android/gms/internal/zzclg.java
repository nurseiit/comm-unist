package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.nearby.connection.PayloadCallback;

final class zzclg extends zzcng {
    private final zzbdw<PayloadCallback> zzbwW;

    zzclg(zzbdw<PayloadCallback> zzbdw) {
        this.zzbwW = (zzbdw) zzbo.zzu(zzbdw);
    }

    public final void zza(zzcoc zzcoc) {
        this.zzbwW.zza(new zzclh(this, zzcoc));
    }

    public final void zza(zzcoe zzcoe) {
        this.zzbwW.zza(new zzcli(this, zzcoe));
    }
}
