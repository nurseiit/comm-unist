package com.google.android.gms.internal;

import java.util.Map;

final class zzrb implements zzrd {
    zzrb() {
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        String str = "Received log message: ";
        String valueOf = String.valueOf((String) map.get("string"));
        zzajc.zzaS(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
    }
}
