package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzai;

final class zzt implements Runnable {
    private /* synthetic */ zzc zzbRA;
    private /* synthetic */ zzai zzbRH;

    zzt(zzc zzc, zzai zzai) {
        this.zzbRA = zzc;
        this.zzbRH = zzai;
    }

    public final void run() {
        this.zzbRH.zza(WearableListenerService.this);
    }
}
