package com.google.android.gms.internal;

import com.google.android.gms.nearby.messages.SubscribeCallback;
import com.google.android.gms.nearby.messages.internal.zzab;

public final class zzcpx extends zzab implements zzcpn<SubscribeCallback> {
    private static final zzcps<SubscribeCallback> zzbzH = new zzcpy();
    private final zzbdw<SubscribeCallback> zzbzE;

    public zzcpx(zzbdw<SubscribeCallback> zzbdw) {
        this.zzbzE = zzbdw;
    }

    public final void onExpired() {
        this.zzbzE.zza(zzbzH);
    }

    public final zzbdw<SubscribeCallback> zzzX() {
        return this.zzbzE;
    }
}
