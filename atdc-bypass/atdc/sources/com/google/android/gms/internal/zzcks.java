package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.nearby.connection.Connections.ConnectionRequestListener;

@Deprecated
final class zzcks extends zzcmn {
    private final zzbdw<ConnectionRequestListener> zzbwL;

    zzcks(zzbdw<ConnectionRequestListener> zzbdw) {
        this.zzbwL = (zzbdw) zzbo.zzu(zzbdw);
    }

    public final void zza(zzcnq zzcnq) {
        this.zzbwL.zza(new zzckt(this, zzcnq));
    }

    public final void zza(zzcoi zzcoi) {
    }
}
