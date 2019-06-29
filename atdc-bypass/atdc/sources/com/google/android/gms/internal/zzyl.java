package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zza;

final class zzyl implements Runnable {
    private /* synthetic */ zza zzRu;

    zzyl(zzyh zzyh, zza zza) {
        this.zzRu = zza;
    }

    public final void run() {
        this.zzRu.destroy();
    }
}
