package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;
import java.util.Map;

@zzzn
public final class zzwm {
    private final zzaka zzJH;
    private final boolean zzNM;
    private final String zzNN;

    public zzwm(zzaka zzaka, Map<String, String> map) {
        this.zzJH = zzaka;
        this.zzNN = (String) map.get("forceOrientation");
        this.zzNM = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean((String) map.get("allowOrientationChange")) : true;
    }

    public final void execute() {
        if (this.zzJH == null) {
            zzajc.zzaT("AdWebView is null");
            return;
        }
        int zzhU = "portrait".equalsIgnoreCase(this.zzNN) ? zzbs.zzbB().zzhU() : "landscape".equalsIgnoreCase(this.zzNN) ? zzbs.zzbB().zzhT() : this.zzNM ? -1 : zzbs.zzbB().zzhV();
        this.zzJH.setRequestedOrientation(zzhU);
    }
}
