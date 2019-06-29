package com.google.android.gms.internal;

import java.util.Map;

final class zzqp implements zzrd {
    zzqp() {
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            zzcu zziy = zzaka.zziy();
            if (zziy != null) {
                zziy.zzB().zza(parseInt, parseInt2, parseInt3);
            }
        } catch (NumberFormatException unused) {
            zzajc.zzaT("Could not parse touch parameters from gmsg.");
        }
    }
}
