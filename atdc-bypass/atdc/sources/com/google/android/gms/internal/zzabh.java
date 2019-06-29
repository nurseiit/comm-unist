package com.google.android.gms.internal;

import java.util.Map;

public final class zzabh implements zzrd {
    public final void zza(zzaka zzaka, Map<String, String> map) {
        String str = (String) map.get("request_id");
        String str2 = "Invalid request: ";
        String valueOf = String.valueOf((String) map.get("errors"));
        zzajc.zzaT(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        zzaaz.zzTZ.zzT(str);
    }
}
