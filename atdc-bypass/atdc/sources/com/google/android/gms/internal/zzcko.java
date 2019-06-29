package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.nearby.connection.ConnectionLifecycleCallback;

final class zzcko extends zzcmt {
    private final zzbdw<ConnectionLifecycleCallback> zzbwL;

    zzcko(zzbdw<ConnectionLifecycleCallback> zzbdw) {
        this.zzbwL = (zzbdw) zzbo.zzu(zzbdw);
    }

    public final void zza(zzcno zzcno) {
        this.zzbwL.zza(new zzckp(this, zzcno));
    }

    public final void zza(zzcnu zzcnu) {
        this.zzbwL.zza(new zzckq(this, zzcnu));
    }

    public final void zza(zzcnw zzcnw) {
        this.zzbwL.zza(new zzckr(this, zzcnw));
    }
}
