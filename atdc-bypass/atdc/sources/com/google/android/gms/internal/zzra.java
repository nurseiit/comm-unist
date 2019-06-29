package com.google.android.gms.internal;

import java.util.Map;

final class zzra implements zzrd {
    zzra() {
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzajc.zzaT("URL missing from httpTrack GMSG.");
        } else {
            new zzaiq(zzaka.getContext(), zzaka.zziz().zzaP, str).zzhL();
        }
    }
}
