package com.google.android.gms.internal;

import com.google.android.gms.nearby.messages.PublishCallback;
import com.google.android.gms.nearby.messages.internal.zzv;

public final class zzcpt extends zzv implements zzcpn<PublishCallback> {
    private static final zzcps<PublishCallback> zzbzH = new zzcpu();
    private final zzbdw<PublishCallback> zzbzE;

    public zzcpt(zzbdw<PublishCallback> zzbdw) {
        this.zzbzE = zzbdw;
    }

    public final void onExpired() {
        this.zzbzE.zza(zzbzH);
    }

    public final zzbdw<PublishCallback> zzzX() {
        return this.zzbzE;
    }
}
