package com.google.android.gms.internal;

import com.google.android.gms.nearby.messages.StatusCallback;

final class zzcpw extends zzcps<StatusCallback> {
    private /* synthetic */ boolean zzbzI;

    zzcpw(zzcpv zzcpv, boolean z) {
        this.zzbzI = z;
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((StatusCallback) obj).onPermissionChanged(this.zzbzI);
    }
}
