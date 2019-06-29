package com.google.android.gms.internal;

import com.google.android.gms.nearby.connection.Connections.MessageListener;

final class zzcle extends zzclf<MessageListener> {
    private /* synthetic */ zzcnw zzbwO;

    zzcle(zzclc zzclc, zzcnw zzcnw) {
        this.zzbwO = zzcnw;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((MessageListener) obj).onDisconnected(this.zzbwO.zzzF());
    }
}
