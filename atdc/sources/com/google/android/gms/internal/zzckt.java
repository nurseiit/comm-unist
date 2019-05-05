package com.google.android.gms.internal;

import com.google.android.gms.nearby.connection.Connections.ConnectionRequestListener;

final class zzckt extends zzclf<ConnectionRequestListener> {
    private /* synthetic */ zzcnq zzbwP;

    zzckt(zzcks zzcks, zzcnq zzcnq) {
        this.zzbwP = zzcnq;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((ConnectionRequestListener) obj).onConnectionRequest(this.zzbwP.zzzF(), this.zzbwP.zzzG(), this.zzbwP.zzzI());
    }
}
