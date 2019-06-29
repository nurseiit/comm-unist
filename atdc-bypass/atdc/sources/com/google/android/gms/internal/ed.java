package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class ed {
    public static Map<String, Object> zzC(Bundle bundle) {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                obj = zzC((Bundle) obj);
            } else if (obj instanceof List) {
                obj = zzM((List) obj);
            }
            hashMap.put(str, obj);
        }
        return hashMap;
    }

    private static List<Object> zzM(List<Object> list) {
        ArrayList arrayList = new ArrayList();
        for (Object next : list) {
            Object next2;
            if (next2 instanceof Bundle) {
                next2 = zzC((Bundle) next2);
            } else if (next2 instanceof List) {
                next2 = zzM((List) next2);
            }
            arrayList.add(next2);
        }
        return arrayList;
    }

    public static dp<?> zzQ(@Nullable Object obj) {
        if (obj == null) {
            return dv.zzbLt;
        }
        if (obj instanceof dp) {
            return (dp) obj;
        }
        if (obj instanceof Boolean) {
            return new ds((Boolean) obj);
        }
        if (obj instanceof Short) {
            return new dt(Double.valueOf(((Short) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new dt(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Long) {
            return new dt(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Float) {
            return new dt(Double.valueOf(((Float) obj).doubleValue()));
        }
        if (obj instanceof Double) {
            return new dt((Double) obj);
        }
        if (obj instanceof Byte) {
            return new eb(obj.toString());
        }
        if (obj instanceof Character) {
            return new eb(obj.toString());
        }
        if (obj instanceof String) {
            return new eb((String) obj);
        }
        HashMap hashMap;
        if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            for (Object zzQ : (List) obj) {
                arrayList.add(zzQ(zzQ));
            }
            return new dw(arrayList);
        } else if (obj instanceof Map) {
            hashMap = new HashMap();
            for (Entry entry : ((Map) obj).entrySet()) {
                zzbo.zzaf(entry.getKey() instanceof String);
                hashMap.put((String) entry.getKey(), zzQ(entry.getValue()));
            }
            return new dz(hashMap);
        } else if (obj instanceof Bundle) {
            hashMap = new HashMap();
            Bundle bundle = (Bundle) obj;
            for (String str : bundle.keySet()) {
                hashMap.put(str, zzQ(bundle.get(str)));
            }
            return new dz(hashMap);
        } else {
            String valueOf = String.valueOf(obj.getClass());
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 20);
            stringBuilder.append("Type not supported: ");
            stringBuilder.append(valueOf);
            throw new UnsupportedOperationException(stringBuilder.toString());
        }
    }

    public static dp zza(zzcwa zzcwa, dp dpVar) {
        zzbo.zzu(dpVar);
        if (!(zzl(dpVar) || (dpVar instanceof du) || (dpVar instanceof dw) || (dpVar instanceof dz))) {
            if (dpVar instanceof ea) {
                dpVar = zza(zzcwa, (ea) dpVar);
            } else {
                throw new UnsupportedOperationException("Attempting to evaluate unknown type");
            }
        }
        if (dpVar == null) {
            throw new IllegalArgumentException("AbstractType evaluated to Java null");
        } else if (!(dpVar instanceof ea)) {
            return dpVar;
        } else {
            throw new IllegalArgumentException("AbstractType evaluated to illegal type Statement.");
        }
    }

    public static dp zza(zzcwa zzcwa, ea eaVar) {
        String zzDv = eaVar.zzDv();
        List zzDw = eaVar.zzDw();
        dp zzfK = zzcwa.zzfK(zzDv);
        StringBuilder stringBuilder;
        if (zzfK == null) {
            stringBuilder = new StringBuilder(String.valueOf(zzDv).length() + 28);
            stringBuilder.append("Function '");
            stringBuilder.append(zzDv);
            stringBuilder.append("' is not supported");
            throw new UnsupportedOperationException(stringBuilder.toString());
        } else if (zzfK instanceof du) {
            return ((zzcxo) ((du) zzfK).zzDl()).zzb(zzcwa, (dp[]) zzDw.toArray(new dp[zzDw.size()]));
        } else {
            stringBuilder = new StringBuilder(String.valueOf(zzDv).length() + 29);
            stringBuilder.append("Function '");
            stringBuilder.append(zzDv);
            stringBuilder.append("' is not a function");
            throw new UnsupportedOperationException(stringBuilder.toString());
        }
    }

    public static dv zza(zzcwa zzcwa, List<dp<?>> list) {
        for (dp dpVar : list) {
            zzbo.zzaf(dpVar instanceof ea);
            dp dpVar2 = zza(zzcwa, dpVar2);
            if (zzm(dpVar2)) {
                return (dv) dpVar2;
            }
        }
        return dv.zzbLu;
    }

    public static Object zzj(dp<?> dpVar) {
        if (dpVar == null || dpVar == dv.zzbLt) {
            return null;
        }
        if (dpVar instanceof ds) {
            return (Boolean) ((ds) dpVar).zzDl();
        }
        if (dpVar instanceof dt) {
            dt dtVar = (dt) dpVar;
            double doubleValue = ((Double) dtVar.zzDl()).doubleValue();
            return (Double.isInfinite(doubleValue) || doubleValue - Math.floor(doubleValue) >= 1.0E-5d) ? ((Double) dtVar.zzDl()).toString() : Integer.valueOf((int) doubleValue);
        } else if (dpVar instanceof eb) {
            return (String) ((eb) dpVar).zzDl();
        } else {
            String str;
            Object[] objArr;
            Object zzj;
            if (dpVar instanceof dw) {
                ArrayList arrayList = new ArrayList();
                for (dp zzj2 : (List) ((dw) dpVar).zzDl()) {
                    zzj = zzj(zzj2);
                    if (zzj == null) {
                        str = "Failure to convert a list element to object: %s (%s)";
                        objArr = new Object[]{zzj2, zzj2.getClass().getCanonicalName()};
                    } else {
                        arrayList.add(zzj);
                    }
                }
                return arrayList;
            } else if (dpVar instanceof dz) {
                HashMap hashMap = new HashMap();
                for (Entry entry : ((Map) ((dz) dpVar).zzDl()).entrySet()) {
                    zzj = zzj((dp) entry.getValue());
                    if (zzj == null) {
                        str = "Failure to convert a map's value to object: %s (%s)";
                        objArr = new Object[]{entry.getValue(), ((dp) entry.getValue()).getClass().getCanonicalName()};
                    } else {
                        hashMap.put((String) entry.getKey(), zzj);
                    }
                }
                return hashMap;
            } else {
                str = String.valueOf(dpVar.getClass());
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 49);
                stringBuilder.append("Converting to Object from unknown abstract type: ");
                stringBuilder.append(str);
                str = stringBuilder.toString();
                zzcvk.e(str);
                return null;
            }
            str = String.format(str, objArr);
            zzcvk.e(str);
            return null;
        }
    }

    public static dp zzk(dp<?> dpVar) {
        if (!(dpVar instanceof dz)) {
            return dpVar;
        }
        HashSet<String> hashSet = new HashSet();
        Map map = (Map) ((dz) dpVar).zzDl();
        for (Entry entry : map.entrySet()) {
            if (entry.getValue() == dv.zzbLu) {
                hashSet.add((String) entry.getKey());
            }
        }
        for (String remove : hashSet) {
            map.remove(remove);
        }
        return dpVar;
    }

    /* JADX WARNING: Missing block: B:14:0x0019, code skipped:
            return true;
     */
    public static boolean zzl(com.google.android.gms.internal.dp r2) {
        /*
        r0 = r2 instanceof com.google.android.gms.internal.ds;
        r1 = 1;
        if (r0 != 0) goto L_0x0019;
    L_0x0005:
        r0 = r2 instanceof com.google.android.gms.internal.dt;
        if (r0 != 0) goto L_0x0019;
    L_0x0009:
        r0 = r2 instanceof com.google.android.gms.internal.eb;
        if (r0 == 0) goto L_0x000e;
    L_0x000d:
        return r1;
    L_0x000e:
        r0 = com.google.android.gms.internal.dv.zzbLt;
        if (r2 == r0) goto L_0x0019;
    L_0x0012:
        r0 = com.google.android.gms.internal.dv.zzbLu;
        if (r2 != r0) goto L_0x0017;
    L_0x0016:
        return r1;
    L_0x0017:
        r2 = 0;
        return r2;
    L_0x0019:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ed.zzl(com.google.android.gms.internal.dp):boolean");
    }

    public static boolean zzm(dp dpVar) {
        return dpVar == dv.zzbLs || dpVar == dv.zzbLr || ((dpVar instanceof dv) && ((dv) dpVar).zzDr());
    }

    public static Bundle zzy(Map<String, dp<?>> map) {
        if (map == null) {
            return null;
        }
        Bundle bundle = new Bundle(map.size());
        for (Entry entry : map.entrySet()) {
            if (entry.getValue() instanceof eb) {
                bundle.putString((String) entry.getKey(), (String) ((eb) entry.getValue()).zzDl());
            } else if (entry.getValue() instanceof ds) {
                bundle.putBoolean((String) entry.getKey(), ((Boolean) ((ds) entry.getValue()).zzDl()).booleanValue());
            } else if (entry.getValue() instanceof dt) {
                bundle.putDouble((String) entry.getKey(), ((Double) ((dt) entry.getValue()).zzDl()).doubleValue());
            } else if (entry.getValue() instanceof dz) {
                bundle.putBundle((String) entry.getKey(), zzy((Map) ((dz) entry.getValue()).zzDl()));
            } else {
                throw new IllegalArgumentException(String.format("Invalid param type for key '%s'. Only boolean, double and string types and maps of thereof are supported.", new Object[]{entry.getKey()}));
            }
        }
        return bundle;
    }
}
