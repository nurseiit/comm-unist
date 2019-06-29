package com.google.android.gms.internal;

import java.util.Map;

@zzzn
public final class zzqj implements zzrd {
    private final zzqk zzIT;

    public zzqj(zzqk zzqk) {
        this.zzIT = zzqk;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        String str = (String) map.get("name");
        if (str == null) {
            zzajc.zzaT("App event with no name parameter.");
        } else {
            this.zzIT.onAppEvent(str, (String) map.get("info"));
        }
    }
}
