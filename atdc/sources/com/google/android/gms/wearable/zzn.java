package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzeg;

final class zzn implements Runnable {
    private /* synthetic */ zzc zzbRA;
    private /* synthetic */ zzeg zzbRC;

    zzn(zzc zzc, zzeg zzeg) {
        this.zzbRA = zzc;
        this.zzbRC = zzeg;
    }

    public final void run() {
        WearableListenerService.this.onPeerConnected(this.zzbRC);
    }
}
