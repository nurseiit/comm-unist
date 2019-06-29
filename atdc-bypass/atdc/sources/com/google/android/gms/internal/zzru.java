package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Map;

@zzzn
public final class zzru implements zzrd {
    private final zzrv zzJJ;

    public zzru(zzrv zzrv) {
        this.zzJJ = zzrv;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        String str = (String) map.get("action");
        if ("grant".equals(str)) {
            zzaee zzaee = null;
            try {
                int parseInt = Integer.parseInt((String) map.get("amount"));
                String str2 = (String) map.get("type");
                if (!TextUtils.isEmpty(str2)) {
                    zzaee = new zzaee(str2, parseInt);
                }
            } catch (NumberFormatException e) {
                zzajc.zzc("Unable to parse reward amount.", e);
            }
            this.zzJJ.zzb(zzaee);
            return;
        }
        if ("video_start".equals(str)) {
            this.zzJJ.zzbc();
        }
    }
}
