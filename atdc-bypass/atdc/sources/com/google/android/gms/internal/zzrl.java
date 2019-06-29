package com.google.android.gms.internal;

import java.util.Map;

@zzzn
public final class zzrl implements zzrd {
    private final zzrm zzJC;

    public zzrl(zzrm zzrm) {
        this.zzJC = zzrm;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        float f = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e) {
            zzajc.zzb("Fail to parse float", e);
        }
        this.zzJC.zzc(equals);
        this.zzJC.zza(equals2, f);
    }
}
