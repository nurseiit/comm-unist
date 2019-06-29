package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.overlay.zzm;
import java.util.Map;

final class zzqy implements zzrd {
    zzqy() {
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        zzm zziu = zzaka.zziu();
        if (zziu != null) {
            zziu.close();
            return;
        }
        zzm zziv = zzaka.zziv();
        if (zziv != null) {
            zziv.close();
        } else {
            zzajc.zzaT("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
