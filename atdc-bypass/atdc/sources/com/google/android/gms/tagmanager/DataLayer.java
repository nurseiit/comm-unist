package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DataLayer {
    public static final String EVENT_KEY = "event";
    public static final Object OBJECT_NOT_PRESENT = new Object();
    private static String[] zzbEd = "gtm.lifetime".toString().split("\\.");
    private static final Pattern zzbEe = Pattern.compile("(\\d+)\\s*([smhd]?)");
    private final ConcurrentHashMap<zzb, Integer> zzbEf;
    private final Map<String, Object> zzbEg;
    private final ReentrantLock zzbEh;
    private final LinkedList<Map<String, Object>> zzbEi;
    private final zzc zzbEj;
    private final CountDownLatch zzbEk;

    static final class zza {
        public final Object mValue;
        public final String zzBN;

        zza(String str, Object obj) {
            this.zzBN = str;
            this.mValue = obj;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zza = (zza) obj;
            return this.zzBN.equals(zza.zzBN) && this.mValue.equals(zza.mValue);
        }

        public final int hashCode() {
            return Arrays.hashCode(new Integer[]{Integer.valueOf(this.zzBN.hashCode()), Integer.valueOf(this.mValue.hashCode())});
        }

        public final String toString() {
            String str = this.zzBN;
            String valueOf = String.valueOf(this.mValue.toString());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 13) + String.valueOf(valueOf).length());
            stringBuilder.append("Key: ");
            stringBuilder.append(str);
            stringBuilder.append(" value: ");
            stringBuilder.append(valueOf);
            return stringBuilder.toString();
        }
    }

    interface zzb {
        void zzp(Map<String, Object> map);
    }

    interface zzc {
        void zza(zzaq zzaq);

        void zza(List<zza> list, long j);

        void zzfe(String str);
    }

    DataLayer() {
        this(new zzao());
    }

    DataLayer(zzc zzc) {
        this.zzbEj = zzc;
        this.zzbEf = new ConcurrentHashMap();
        this.zzbEg = new HashMap();
        this.zzbEh = new ReentrantLock();
        this.zzbEi = new LinkedList();
        this.zzbEk = new CountDownLatch(1);
        this.zzbEj.zza(new zzap(this));
    }

    public static List<Object> listOf(Object... objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object add : objArr) {
            arrayList.add(add);
        }
        return arrayList;
    }

    public static Map<String, Object> mapOf(Object... objArr) {
        if (objArr.length % 2 != 0) {
            throw new IllegalArgumentException("expected even number of key-value pairs");
        }
        HashMap hashMap = new HashMap();
        int i = 0;
        while (i < objArr.length) {
            if (objArr[i] instanceof String) {
                hashMap.put((String) objArr[i], objArr[i + 1]);
                i += 2;
            } else {
                String valueOf = String.valueOf(objArr[i]);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 21);
                stringBuilder.append("key is not a string: ");
                stringBuilder.append(valueOf);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        }
        return hashMap;
    }

    private final void zza(Map<String, Object> map, String str, Collection<zza> collection) {
        for (Entry entry : map.entrySet()) {
            Object obj = str.length() == 0 ? "" : ".";
            String str2 = (String) entry.getKey();
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + String.valueOf(obj).length()) + String.valueOf(str2).length());
            stringBuilder.append(str);
            stringBuilder.append(obj);
            stringBuilder.append(str2);
            String stringBuilder2 = stringBuilder.toString();
            if (entry.getValue() instanceof Map) {
                zza((Map) entry.getValue(), stringBuilder2, collection);
            } else if (!stringBuilder2.equals("gtm.lifetime")) {
                collection.add(new zza(stringBuilder2, entry.getValue()));
            }
        }
    }

    private final void zzb(List<Object> list, List<Object> list2) {
        while (list2.size() < list.size()) {
            list2.add(null);
        }
        for (int i = 0; i < list.size(); i++) {
            Object obj = list.get(i);
            if (obj instanceof List) {
                if (!(list2.get(i) instanceof List)) {
                    list2.set(i, new ArrayList());
                }
                zzb((List) obj, (List) list2.get(i));
            } else if (obj instanceof Map) {
                if (!(list2.get(i) instanceof Map)) {
                    list2.set(i, new HashMap());
                }
                zzd((Map) obj, (Map) list2.get(i));
            } else if (obj != OBJECT_NOT_PRESENT) {
                list2.set(i, obj);
            }
        }
    }

    private final void zzd(Map<String, Object> map, Map<String, Object> map2) {
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj instanceof List) {
                if (!(map2.get(str) instanceof List)) {
                    map2.put(str, new ArrayList());
                }
                zzb((List) obj, (List) map2.get(str));
            } else if (obj instanceof Map) {
                if (!(map2.get(str) instanceof Map)) {
                    map2.put(str, new HashMap());
                }
                zzd((Map) obj, (Map) map2.get(str));
            } else {
                map2.put(str, obj);
            }
        }
    }

    private static Long zzfd(String str) {
        Matcher matcher = zzbEe.matcher(str);
        String str2;
        if (matcher.matches()) {
            long parseLong;
            try {
                parseLong = Long.parseLong(matcher.group(1));
            } catch (NumberFormatException unused) {
                String str3 = "illegal number in _lifetime value: ";
                String valueOf = String.valueOf(str);
                zzdj.zzaT(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
                parseLong = 0;
            }
            if (parseLong <= 0) {
                str2 = "non-positive _lifetime: ";
                str = String.valueOf(str);
                zzdj.zzaS(str.length() != 0 ? str2.concat(str) : new String(str2));
                return null;
            }
            str2 = matcher.group(2);
            if (str2.length() == 0) {
                return Long.valueOf(parseLong);
            }
            char charAt = str2.charAt(0);
            if (charAt != 'd') {
                if (charAt == 'h') {
                    parseLong = (parseLong * 1000) * 60;
                } else if (charAt == 'm') {
                    parseLong *= 1000;
                } else if (charAt != 's') {
                    str2 = "unknown units in _lifetime: ";
                    str = String.valueOf(str);
                    zzdj.zzaT(str.length() != 0 ? str2.concat(str) : new String(str2));
                    return null;
                } else {
                    parseLong *= 1000;
                }
                parseLong *= 60;
            } else {
                parseLong = (((parseLong * 1000) * 60) * 60) * 24;
            }
            return Long.valueOf(parseLong);
        }
        str2 = "unknown _lifetime: ";
        str = String.valueOf(str);
        zzdj.zzaS(str.length() != 0 ? str2.concat(str) : new String(str2));
        return null;
    }

    static Map<String, Object> zzn(String str, Object obj) {
        HashMap hashMap = new HashMap();
        String[] split = str.toString().split("\\.");
        int i = 0;
        Map map = hashMap;
        while (i < split.length - 1) {
            HashMap hashMap2 = new HashMap();
            map.put(split[i], hashMap2);
            i++;
            Object map2 = hashMap2;
        }
        map2.put(split[split.length - 1], obj);
        return hashMap;
    }

    private final void zzr(Map<String, Object> map) {
        this.zzbEh.lock();
        try {
            this.zzbEi.offer(map);
            if (this.zzbEh.getHoldCount() == 1) {
                int i = 0;
                do {
                    Map map2 = (Map) this.zzbEi.poll();
                    if (map2 != null) {
                        synchronized (this.zzbEg) {
                            for (String str : map2.keySet()) {
                                zzd(zzn(str, map2.get(str)), this.zzbEg);
                            }
                        }
                        for (zzb zzp : this.zzbEf.keySet()) {
                            zzp.zzp(map2);
                        }
                        i++;
                    }
                } while (i <= 500);
                this.zzbEi.clear();
                throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
            }
            Object zzs = zzs(map);
            Long zzfd = zzs == null ? null : zzfd(zzs.toString());
            if (zzfd != null) {
                ArrayList arrayList = new ArrayList();
                zza(map, "", arrayList);
                this.zzbEj.zza(arrayList, zzfd.longValue());
            }
            this.zzbEh.unlock();
        } catch (Throwable th) {
            this.zzbEh.unlock();
        }
    }

    private static Object zzs(Map<String, Object> map) {
        Object map2;
        for (Object obj : zzbEd) {
            if (!(map2 instanceof Map)) {
                return null;
            }
            map2 = ((Map) map2).get(obj);
        }
        return map2;
    }

    public Object get(String str) {
        synchronized (this.zzbEg) {
            Object obj = this.zzbEg;
            String[] split = str.split("\\.");
            int length = split.length;
            int i = 0;
            while (i < length) {
                Object obj2 = split[i];
                if (obj instanceof Map) {
                    obj = ((Map) obj).get(obj2);
                    if (obj == null) {
                        return null;
                    }
                    i++;
                } else {
                    return null;
                }
            }
            return obj;
        }
    }

    public void push(String str, Object obj) {
        push(zzn(str, obj));
    }

    public void push(Map<String, Object> map) {
        try {
            this.zzbEk.await();
        } catch (InterruptedException unused) {
            zzdj.zzaT("DataLayer.push: unexpected InterruptedException");
        }
        zzr(map);
    }

    public void pushEvent(String str, Map<String, Object> map) {
        HashMap hashMap = new HashMap(map);
        hashMap.put("event", str);
        push(hashMap);
    }

    public String toString() {
        String stringBuilder;
        synchronized (this.zzbEg) {
            StringBuilder stringBuilder2 = new StringBuilder();
            for (Entry entry : this.zzbEg.entrySet()) {
                stringBuilder2.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", new Object[]{entry.getKey(), entry.getValue()}));
            }
            stringBuilder = stringBuilder2.toString();
        }
        return stringBuilder;
    }

    /* Access modifiers changed, original: final */
    public final void zza(zzb zzb) {
        this.zzbEf.put(zzb, Integer.valueOf(0));
    }

    /* Access modifiers changed, original: final */
    public final void zzfc(String str) {
        push(str, null);
        this.zzbEj.zzfe(str);
    }
}
