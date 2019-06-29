package com.google.android.gms.internal;

import java.util.List;
import java.util.Map;

final class ov implements oy {
    private /* synthetic */ op zzcbf;
    private /* synthetic */ pc zzcbm;

    ov(op opVar, pc pcVar) {
        this.zzcbf = opVar;
        this.zzcbm = pcVar;
    }

    public final void zzC(Map<String, Object> map) {
        String str = (String) map.get("s");
        if (str.equals("ok")) {
            Map map2 = (Map) map.get("d");
            if (map2.containsKey("w")) {
                this.zzcbf.zza((List) map2.get("w"), this.zzcbm.zzcby);
            }
        }
        if (((pc) this.zzcbf.zzcaT.get(this.zzcbm.zzGm())) == this.zzcbm) {
            if (str.equals("ok")) {
                this.zzcbm.zzcbx.zzaa(null, null);
            } else {
                this.zzcbf.zza(this.zzcbm.zzGm());
                this.zzcbm.zzcbx.zzaa(str, (String) map.get("d"));
            }
        }
    }
}
