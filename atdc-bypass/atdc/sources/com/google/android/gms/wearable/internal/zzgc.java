package com.google.android.gms.wearable.internal;

import com.google.android.gms.internal.zzbdz;
import com.google.android.gms.wearable.MessageApi.MessageListener;

final class zzgc implements zzbdz<MessageListener> {
    private /* synthetic */ zzdx zzbRB;

    zzgc(zzdx zzdx) {
        this.zzbRB = zzdx;
    }

    public final void zzpT() {
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((MessageListener) obj).onMessageReceived(this.zzbRB);
    }
}
