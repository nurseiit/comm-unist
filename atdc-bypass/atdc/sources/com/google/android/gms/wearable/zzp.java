package com.google.android.gms.wearable;

import java.util.List;

final class zzp implements Runnable {
    private /* synthetic */ zzc zzbRA;
    private /* synthetic */ List zzbRD;

    zzp(zzc zzc, List list) {
        this.zzbRA = zzc;
        this.zzbRD = list;
    }

    public final void run() {
        WearableListenerService.this.onConnectedNodes(this.zzbRD);
    }
}
