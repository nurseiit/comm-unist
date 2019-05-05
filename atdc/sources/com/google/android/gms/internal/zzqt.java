package com.google.android.gms.internal;

import java.util.Map;

final class zzqt implements zzrd {
    zzqt() {
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        if (map.keySet().contains("start")) {
            zzaka.zzD(true);
        }
        if (map.keySet().contains("stop")) {
            zzaka.zzD(false);
        }
    }
}
