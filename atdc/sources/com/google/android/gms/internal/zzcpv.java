package com.google.android.gms.internal;

import com.google.android.gms.nearby.messages.StatusCallback;
import com.google.android.gms.nearby.messages.internal.zzy;

public final class zzcpv extends zzy implements zzcpn<StatusCallback> {
    private final zzbdw<StatusCallback> zzbzE;

    zzcpv(zzbdw<StatusCallback> zzbdw) {
        this.zzbzE = zzbdw;
    }

    public final void onPermissionChanged(boolean z) {
        this.zzbzE.zza(new zzcpw(this, z));
    }

    public final zzbdw<StatusCallback> zzzX() {
        return this.zzbzE;
    }
}
