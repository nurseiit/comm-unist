package com.google.android.gms.wearable.internal;

import com.google.android.gms.internal.zzbdz;
import com.google.android.gms.wearable.NodeApi.NodeListener;

final class zzge implements zzbdz<NodeListener> {
    private /* synthetic */ zzeg zzbRC;

    zzge(zzeg zzeg) {
        this.zzbRC = zzeg;
    }

    public final void zzpT() {
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((NodeListener) obj).onPeerDisconnected(this.zzbRC);
    }
}
