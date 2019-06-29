package com.google.android.gms.internal;

import com.google.android.gms.analytics.zzj;
import com.google.android.gms.common.internal.zzbo;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzalo extends zzj<zzalo> {
    private final Map<String, Object> zzHa = new HashMap();

    public final void set(String str, String str2) {
        zzbo.zzcF(str);
        if (str != null && str.startsWith("&")) {
            str = str.substring(1);
        }
        zzbo.zzh(str, "Name can not be empty or \"&\"");
        this.zzHa.put(str, str2);
    }

    public final String toString() {
        return zzj.zzh(this.zzHa);
    }

    public final /* synthetic */ void zzb(zzj zzj) {
        zzalo zzalo = (zzalo) zzj;
        zzbo.zzu(zzalo);
        zzalo.zzHa.putAll(this.zzHa);
    }

    public final Map<String, Object> zzjR() {
        return Collections.unmodifiableMap(this.zzHa);
    }
}
