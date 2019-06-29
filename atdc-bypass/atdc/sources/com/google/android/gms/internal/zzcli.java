package com.google.android.gms.internal;

import com.google.android.gms.nearby.connection.PayloadCallback;

final class zzcli extends zzclf<PayloadCallback> {
    private /* synthetic */ zzcoe zzbwX;

    zzcli(zzclg zzclg, zzcoe zzcoe) {
        this.zzbwX = zzcoe;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((PayloadCallback) obj).onPayloadTransferUpdate(this.zzbwX.zzzF(), this.zzbwX.zzzM());
    }
}
