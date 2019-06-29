package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzl;

final class zzr implements Runnable {
    private /* synthetic */ zzc zzbRA;
    private /* synthetic */ zzl zzbRF;

    zzr(zzc zzc, zzl zzl) {
        this.zzbRA = zzc;
        this.zzbRF = zzl;
    }

    public final void run() {
        WearableListenerService.this.onNotificationReceived(this.zzbRF);
    }
}
