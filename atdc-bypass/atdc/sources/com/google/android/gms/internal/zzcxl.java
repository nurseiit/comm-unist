package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class zzcxl {
    private static final Map<String, zzcxm> zzbJO;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(zzbf.CONTAINS.toString(), new zzcxm("contains"));
        hashMap.put(zzbf.ENDS_WITH.toString(), new zzcxm("endsWith"));
        hashMap.put(zzbf.EQUALS.toString(), new zzcxm("equals"));
        hashMap.put(zzbf.GREATER_EQUALS.toString(), new zzcxm("greaterEquals"));
        hashMap.put(zzbf.GREATER_THAN.toString(), new zzcxm("greaterThan"));
        hashMap.put(zzbf.LESS_EQUALS.toString(), new zzcxm("lessEquals"));
        hashMap.put(zzbf.LESS_THAN.toString(), new zzcxm("lessThan"));
        hashMap.put(zzbf.REGEX.toString(), new zzcxm("regex", new String[]{zzbg.ARG0.toString(), zzbg.ARG1.toString(), zzbg.IGNORE_CASE.toString()}));
        hashMap.put(zzbf.STARTS_WITH.toString(), new zzcxm("startsWith"));
        zzbJO = hashMap;
    }

    public static ea zza(String str, Map<String, dp<?>> map, zzcwa zzcwa) {
        if (zzbJO.containsKey(str)) {
            zzcxm zzcxm = (zzcxm) zzbJO.get(str);
            List zza = zza(zzcxm.zzCH(), map);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new eb("gtmUtils"));
            ea eaVar = new ea("15", arrayList);
            arrayList = new ArrayList();
            arrayList.add(eaVar);
            arrayList.add(new eb("mobile"));
            eaVar = new ea("17", arrayList);
            arrayList = new ArrayList();
            arrayList.add(eaVar);
            arrayList.add(new eb(zzcxm.zzCG()));
            arrayList.add(new dw(zza));
            return new ea("2", arrayList);
        }
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 47);
        stringBuilder.append("Fail to convert ");
        stringBuilder.append(str);
        stringBuilder.append(" to the internal representation");
        throw new RuntimeException(stringBuilder.toString());
    }

    public static String zza(zzbf zzbf) {
        return zzfM(zzbf.toString());
    }

    private static List<dp<?>> zza(String[] strArr, Map<String, dp<?>> map) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < strArr.length; i++) {
            Object obj;
            if (map.containsKey(strArr[i])) {
                dp obj2 = (dp) map.get(strArr[i]);
            } else {
                obj2 = dv.zzbLu;
            }
            arrayList.add(obj2);
        }
        return arrayList;
    }

    public static String zzfM(String str) {
        return zzbJO.containsKey(str) ? ((zzcxm) zzbJO.get(str)).zzCG() : null;
    }
}
