package com.google.android.gms.internal;

import com.google.android.gms.analytics.zzj;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public final class zzaln extends zzj<zzaln> {
    private Map<Integer, Double> zzaeS = new HashMap(4);

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Entry entry : this.zzaeS.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 6);
            stringBuilder.append("metric");
            stringBuilder.append(valueOf);
            hashMap.put(stringBuilder.toString(), entry.getValue());
        }
        return zzj.zzh(hashMap);
    }

    public final /* synthetic */ void zzb(zzj zzj) {
        ((zzaln) zzj).zzaeS.putAll(this.zzaeS);
    }

    public final Map<Integer, Double> zzjQ() {
        return Collections.unmodifiableMap(this.zzaeS);
    }
}
