package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class xp {
    public static xm zza(Object obj, xm xmVar) throws DatabaseException {
        try {
            Map map;
            if (obj instanceof Map) {
                map = (Map) obj;
                if (map.containsKey(".priority")) {
                    xmVar = xs.zzc(null, map.get(".priority"));
                }
                if (map.containsKey(".value")) {
                    obj = map.get(".value");
                }
            }
            if (obj == null) {
                return xd.zzJb();
            }
            if (obj instanceof String) {
                return new xu((String) obj, xmVar);
            }
            if (obj instanceof Long) {
                return new xk((Long) obj, xmVar);
            }
            if (obj instanceof Integer) {
                return new xk(Long.valueOf((long) ((Integer) obj).intValue()), xmVar);
            }
            if (obj instanceof Double) {
                return new xc((Double) obj, xmVar);
            }
            if (obj instanceof Boolean) {
                return new wo((Boolean) obj, xmVar);
            }
            if (!(obj instanceof Map)) {
                if (!(obj instanceof List)) {
                    String str = "Failed to parse node with class ";
                    String valueOf = String.valueOf(obj.getClass().toString());
                    throw new DatabaseException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                }
            }
            String stringBuilder;
            xm zza;
            if (obj instanceof Map) {
                Map map2 = (Map) obj;
                if (map2.containsKey(".sv")) {
                    return new xb(map2, xmVar);
                }
                map = new HashMap(map2.size());
                for (String stringBuilder2 : map2.keySet()) {
                    if (!stringBuilder2.startsWith(".")) {
                        zza = zza(map2.get(stringBuilder2), xd.zzJb());
                        if (!zza.isEmpty()) {
                            map.put(wp.zzgT(stringBuilder2), zza);
                        }
                    }
                }
            } else {
                List list = (List) obj;
                map = new HashMap(list.size());
                for (int i = 0; i < list.size(); i++) {
                    StringBuilder stringBuilder3 = new StringBuilder(11);
                    stringBuilder3.append(i);
                    stringBuilder2 = stringBuilder3.toString();
                    zza = zza(list.get(i), xd.zzJb());
                    if (!zza.isEmpty()) {
                        map.put(wp.zzgT(stringBuilder2), zza);
                    }
                }
            }
            return map.isEmpty() ? xd.zzJb() : new wr(ni.zza(map, wr.zzchR), xmVar);
        } catch (ClassCastException e) {
            throw new DatabaseException("Failed to parse node", e);
        }
    }
}
