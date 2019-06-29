package com.google.android.gms.internal;

import com.google.android.gms.measurement.AppMeasurement.Param;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public final class se {
    public static pz zza(pz pzVar, Map<String, Object> map) {
        pz zzGI = pz.zzGI();
        Iterator it = pzVar.iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            zzGI = zzGI.zze((qr) entry.getKey(), zza((xm) entry.getValue(), (Map) map));
        }
        return zzGI;
    }

    public static xm zza(xm xmVar, Map<String, Object> map) {
        Object value = xmVar.zzIR().getValue();
        if (value instanceof Map) {
            Map map2 = (Map) value;
            if (map2.containsKey(".sv")) {
                value = map.get((String) map2.get(".sv"));
            }
        }
        xm zzc = xs.zzc(null, value);
        if (xmVar.zzIQ()) {
            Object value2 = xmVar.getValue();
            if (value2 instanceof Map) {
                Map map3 = (Map) value2;
                if (map3.containsKey(".sv")) {
                    String str = (String) map3.get(".sv");
                    if (map.containsKey(str)) {
                        value2 = map.get(str);
                    }
                }
            }
            return (value2.equals(xmVar.getValue()) && zzc.equals(xmVar.zzIR())) ? xmVar : xp.zza(value2, zzc);
        } else if (xmVar.isEmpty()) {
            return xmVar;
        } else {
            wr wrVar = (wr) xmVar;
            sh shVar = new sh(wrVar);
            wrVar.zza(new sg(map, shVar), false);
            return !shVar.zzHm().zzIR().equals(zzc) ? shVar.zzHm().zzf(zzc) : shVar.zzHm();
        }
    }

    public static Map<String, Object> zza(ys ysVar) {
        HashMap hashMap = new HashMap();
        hashMap.put(Param.TIMESTAMP, Long.valueOf(ysVar.zzJF()));
        return hashMap;
    }
}
