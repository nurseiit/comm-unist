package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzaa;

final class zzq implements Runnable {
    private /* synthetic */ zzc zzbRA;
    private /* synthetic */ zzaa zzbRE;

    zzq(zzc zzc, zzaa zzaa) {
        this.zzbRA = zzc;
        this.zzbRE = zzaa;
    }

    public final void run() {
        WearableListenerService.this.onCapabilityChanged(this.zzbRE);
    }
}
