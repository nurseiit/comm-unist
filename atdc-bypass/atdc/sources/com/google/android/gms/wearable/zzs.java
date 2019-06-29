package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzi;

final class zzs implements Runnable {
    private /* synthetic */ zzc zzbRA;
    private /* synthetic */ zzi zzbRG;

    zzs(zzc zzc, zzi zzi) {
        this.zzbRA = zzc;
        this.zzbRG = zzi;
    }

    public final void run() {
        WearableListenerService.this.onEntityUpdate(this.zzbRG);
    }
}
