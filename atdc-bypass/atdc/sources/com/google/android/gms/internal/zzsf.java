package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.internal.zzc;
import java.util.Map;

@zzzn
public final class zzsf implements zzrd {
    public final void zza(zzaka zzaka, Map<String, String> map) {
        zzbs.zzbW();
        if (map.containsKey("abort")) {
            if (!zzsa.zze(zzaka)) {
                zzajc.zzaT("Precache abort but no preload task running.");
            }
            return;
        }
        String str = (String) map.get("src");
        if (str == null) {
            zzajc.zzaT("Precache video action is missing the src parameter.");
            return;
        }
        int parseInt;
        try {
            parseInt = Integer.parseInt((String) map.get("player"));
        } catch (NumberFormatException unused) {
            parseInt = 0;
        }
        String str2 = map.containsKey("mimetype") ? (String) map.get("mimetype") : "";
        if (zzsa.zzf(zzaka)) {
            zzajc.zzaT("Precache task already running.");
            return;
        }
        zzc.zzr(zzaka.zzak());
        new zzry(zzaka, zzaka.zzak().zztm.zza(zzaka, parseInt, str2), str).zzhL();
    }
}
