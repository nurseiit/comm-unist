package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;
import java.util.Map;

@zzzn
public final class zzro implements zzrd {
    public final void zza(zzaka zzaka, Map<String, String> map) {
        if (zzbs.zzbY().zzp(zzaka.getContext())) {
            int i = -1;
            try {
                i = Integer.parseInt((String) map.get("eventType"));
            } catch (Exception e) {
                zzajc.zzb("Parse Scion log event type error", e);
            }
            String str = (String) map.get("eventId");
            switch (i) {
                case 0:
                    zzbs.zzbY().zzf(zzaka.getContext(), str);
                    return;
                case 1:
                    zzbs.zzbY().zzg(zzaka.getContext(), str);
                    return;
                case 2:
                    zzbs.zzbY().zzi(zzaka.getContext(), str);
                    return;
                default:
                    return;
            }
        }
    }
}
