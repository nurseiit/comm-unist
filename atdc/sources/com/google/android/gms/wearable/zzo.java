package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzeg;

final class zzo implements Runnable {
    private /* synthetic */ zzc zzbRA;
    private /* synthetic */ zzeg zzbRC;

    zzo(zzc zzc, zzeg zzeg) {
        this.zzbRA = zzc;
        this.zzbRC = zzeg;
    }

    public final void run() {
        WearableListenerService.this.onPeerDisconnected(this.zzbRC);
    }
}
