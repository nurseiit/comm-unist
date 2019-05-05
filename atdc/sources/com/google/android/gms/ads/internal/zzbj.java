package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzir;
import java.lang.ref.WeakReference;

final class zzbj implements Runnable {
    private /* synthetic */ WeakReference zzuX;
    private /* synthetic */ zzbi zzuY;

    zzbj(zzbi zzbi, WeakReference weakReference) {
        this.zzuY = zzbi;
        this.zzuX = weakReference;
    }

    public final void run() {
        this.zzuY.zzuU = false;
        zza zza = (zza) this.zzuX.get();
        if (zza != null) {
            zzir zza2 = this.zzuY.zzuT;
            if (zza.zzb(zza2)) {
                zza.zza(zza2);
            } else {
                zzajc.zzaS("Ad is not visible. Not refreshing ad.");
                zza.zzsO.zzg(zza2);
            }
        }
    }
}
