package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzw;
import com.google.android.gms.common.util.zzf;
import java.util.Map;

@zzzn
public final class zzrp implements zzrd {
    private static Map<String, Integer> zzJG = zzf.zza("resize", Integer.valueOf(1), "playVideo", Integer.valueOf(2), "storePicture", Integer.valueOf(3), "createCalendarEvent", Integer.valueOf(4), "setOrientationProperties", Integer.valueOf(5), "closeResizedAd", Integer.valueOf(6));
    private final zzw zzJE;
    private final zzwk zzJF;

    public zzrp(zzw zzw, zzwk zzwk) {
        this.zzJE = zzw;
        this.zzJF = zzwk;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        int intValue = ((Integer) zzJG.get((String) map.get("a"))).intValue();
        if (intValue != 5 && this.zzJE != null && !this.zzJE.zzaR()) {
            this.zzJE.zzt(null);
        } else if (intValue != 1) {
            switch (intValue) {
                case 3:
                    new zzwn(zzaka, map).execute();
                    return;
                case 4:
                    new zzwh(zzaka, map).execute();
                    return;
                case 5:
                    new zzwm(zzaka, map).execute();
                    return;
                case 6:
                    this.zzJF.zzk(true);
                    return;
                default:
                    zzajc.zzaS("Unknown MRAID command called.");
                    return;
            }
        } else {
            this.zzJF.execute(map);
        }
    }
}
