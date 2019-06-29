package com.google.android.gms.internal;

import java.util.Map;

final class zzqs implements zzrd {
    zzqs() {
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        if (map.keySet().contains("start")) {
            zzaka.zziw().zziW();
        } else if (map.keySet().contains("stop")) {
            zzaka.zziw().zziX();
        } else {
            if (map.keySet().contains("cancel")) {
                zzaka.zziw().zziY();
            }
        }
    }
}
