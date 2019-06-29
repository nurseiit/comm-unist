package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

public class hi {
    private static Uri CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
    private static Uri zzbUa = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    private static Pattern zzbUb = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    private static Pattern zzbUc = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static final AtomicBoolean zzbUd = new AtomicBoolean();
    private static HashMap<String, String> zzbUe;
    private static HashMap<String, Boolean> zzbUf = new HashMap();
    private static HashMap<String, Integer> zzbUg = new HashMap();
    private static HashMap<String, Long> zzbUh = new HashMap();
    private static HashMap<String, Float> zzbUi = new HashMap();
    private static Object zzbUj;
    private static boolean zzbUk;
    private static String[] zzbUl = new String[0];

    public static long getLong(ContentResolver contentResolver, String str, long j) {
        Object zzb = zzb(contentResolver);
        long j2 = 0;
        Object obj = (Long) zza(zzbUh, str, Long.valueOf(0));
        if (obj != null) {
            return obj.longValue();
        }
        String zza = zza(contentResolver, str, null);
        if (zza != null) {
            try {
                long parseLong = Long.parseLong(zza);
                obj = Long.valueOf(parseLong);
                j2 = parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        HashMap hashMap = zzbUh;
        synchronized (hi.class) {
            if (zzb == zzbUj) {
                hashMap.put(str, obj);
                zzbUe.remove(str);
            }
        }
        return j2;
    }

    /* JADX WARNING: Missing block: B:10:0x0012, code skipped:
            return r2;
     */
    private static <T> T zza(java.util.HashMap<java.lang.String, T> r2, java.lang.String r3, T r4) {
        /*
        r0 = com.google.android.gms.internal.hi.class;
        monitor-enter(r0);
        r1 = r2.containsKey(r3);	 Catch:{ all -> 0x0016 }
        if (r1 == 0) goto L_0x0013;
    L_0x0009:
        r2 = r2.get(r3);	 Catch:{ all -> 0x0016 }
        if (r2 == 0) goto L_0x0010;
    L_0x000f:
        goto L_0x0011;
    L_0x0010:
        r2 = r4;
    L_0x0011:
        monitor-exit(r0);	 Catch:{ all -> 0x0016 }
        return r2;
    L_0x0013:
        monitor-exit(r0);	 Catch:{ all -> 0x0016 }
        r2 = 0;
        return r2;
    L_0x0016:
        r2 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0016 }
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.hi.zza(java.util.HashMap, java.lang.String, java.lang.Object):java.lang.Object");
    }

    /* JADX WARNING: Missing block: B:10:0x001e, code skipped:
            return r9;
     */
    /* JADX WARNING: Missing block: B:26:0x0054, code skipped:
            return r9;
     */
    /* JADX WARNING: Missing block: B:28:0x0056, code skipped:
            return null;
     */
    /* JADX WARNING: Missing block: B:31:0x005b, code skipped:
            r9 = r9.query(CONTENT_URI, null, null, new java.lang.String[]{r10}, null);
     */
    /* JADX WARNING: Missing block: B:32:0x006b, code skipped:
            if (r9 == null) goto L_0x0090;
     */
    /* JADX WARNING: Missing block: B:35:0x0071, code skipped:
            if (r9.moveToFirst() != false) goto L_0x0074;
     */
    /* JADX WARNING: Missing block: B:37:0x0074, code skipped:
            r11 = r9.getString(1);
     */
    /* JADX WARNING: Missing block: B:38:0x0078, code skipped:
            if (r11 == null) goto L_0x0081;
     */
    /* JADX WARNING: Missing block: B:40:0x007e, code skipped:
            if (r11.equals(null) == false) goto L_0x0081;
     */
    /* JADX WARNING: Missing block: B:41:0x0080, code skipped:
            r11 = null;
     */
    /* JADX WARNING: Missing block: B:42:0x0081, code skipped:
            zza(r0, r10, r11);
     */
    /* JADX WARNING: Missing block: B:43:0x0084, code skipped:
            if (r11 == null) goto L_0x0087;
     */
    /* JADX WARNING: Missing block: B:44:0x0087, code skipped:
            r11 = null;
     */
    /* JADX WARNING: Missing block: B:45:0x0088, code skipped:
            if (r9 == null) goto L_0x008d;
     */
    /* JADX WARNING: Missing block: B:46:0x008a, code skipped:
            r9.close();
     */
    /* JADX WARNING: Missing block: B:47:0x008d, code skipped:
            return r11;
     */
    /* JADX WARNING: Missing block: B:50:?, code skipped:
            zza(r0, r10, null);
     */
    /* JADX WARNING: Missing block: B:51:0x0093, code skipped:
            if (r9 == null) goto L_0x0098;
     */
    /* JADX WARNING: Missing block: B:52:0x0095, code skipped:
            r9.close();
     */
    /* JADX WARNING: Missing block: B:53:0x0098, code skipped:
            return null;
     */
    /* JADX WARNING: Missing block: B:54:0x0099, code skipped:
            if (r9 != null) goto L_0x009b;
     */
    /* JADX WARNING: Missing block: B:55:0x009b, code skipped:
            r9.close();
     */
    public static java.lang.String zza(android.content.ContentResolver r9, java.lang.String r10, java.lang.String r11) {
        /*
        r11 = com.google.android.gms.internal.hi.class;
        monitor-enter(r11);
        zza(r9);	 Catch:{ all -> 0x009f }
        r0 = zzbUj;	 Catch:{ all -> 0x009f }
        r1 = zzbUe;	 Catch:{ all -> 0x009f }
        r1 = r1.containsKey(r10);	 Catch:{ all -> 0x009f }
        r2 = 0;
        if (r1 == 0) goto L_0x001f;
    L_0x0011:
        r9 = zzbUe;	 Catch:{ all -> 0x009f }
        r9 = r9.get(r10);	 Catch:{ all -> 0x009f }
        r9 = (java.lang.String) r9;	 Catch:{ all -> 0x009f }
        if (r9 == 0) goto L_0x001c;
    L_0x001b:
        goto L_0x001d;
    L_0x001c:
        r9 = r2;
    L_0x001d:
        monitor-exit(r11);	 Catch:{ all -> 0x009f }
        return r9;
    L_0x001f:
        r1 = zzbUl;	 Catch:{ all -> 0x009f }
        r3 = r1.length;	 Catch:{ all -> 0x009f }
        r4 = 0;
        r5 = 0;
    L_0x0024:
        if (r5 >= r3) goto L_0x005a;
    L_0x0026:
        r6 = r1[r5];	 Catch:{ all -> 0x009f }
        r6 = r10.startsWith(r6);	 Catch:{ all -> 0x009f }
        if (r6 == 0) goto L_0x0057;
    L_0x002e:
        r0 = zzbUk;	 Catch:{ all -> 0x009f }
        if (r0 == 0) goto L_0x003a;
    L_0x0032:
        r0 = zzbUe;	 Catch:{ all -> 0x009f }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x009f }
        if (r0 == 0) goto L_0x0055;
    L_0x003a:
        r0 = zzbUl;	 Catch:{ all -> 0x009f }
        zzc(r9, r0);	 Catch:{ all -> 0x009f }
        r9 = zzbUe;	 Catch:{ all -> 0x009f }
        r9 = r9.containsKey(r10);	 Catch:{ all -> 0x009f }
        if (r9 == 0) goto L_0x0055;
    L_0x0047:
        r9 = zzbUe;	 Catch:{ all -> 0x009f }
        r9 = r9.get(r10);	 Catch:{ all -> 0x009f }
        r9 = (java.lang.String) r9;	 Catch:{ all -> 0x009f }
        if (r9 == 0) goto L_0x0052;
    L_0x0051:
        goto L_0x0053;
    L_0x0052:
        r9 = r2;
    L_0x0053:
        monitor-exit(r11);	 Catch:{ all -> 0x009f }
        return r9;
    L_0x0055:
        monitor-exit(r11);	 Catch:{ all -> 0x009f }
        return r2;
    L_0x0057:
        r5 = r5 + 1;
        goto L_0x0024;
    L_0x005a:
        monitor-exit(r11);	 Catch:{ all -> 0x009f }
        r11 = CONTENT_URI;
        r5 = 0;
        r6 = 0;
        r1 = 1;
        r7 = new java.lang.String[r1];
        r7[r4] = r10;
        r8 = 0;
        r3 = r9;
        r4 = r11;
        r9 = r3.query(r4, r5, r6, r7, r8);
        if (r9 == 0) goto L_0x0090;
    L_0x006d:
        r11 = r9.moveToFirst();	 Catch:{ all -> 0x008e }
        if (r11 != 0) goto L_0x0074;
    L_0x0073:
        goto L_0x0090;
    L_0x0074:
        r11 = r9.getString(r1);	 Catch:{ all -> 0x008e }
        if (r11 == 0) goto L_0x0081;
    L_0x007a:
        r1 = r11.equals(r2);	 Catch:{ all -> 0x008e }
        if (r1 == 0) goto L_0x0081;
    L_0x0080:
        r11 = r2;
    L_0x0081:
        zza(r0, r10, r11);	 Catch:{ all -> 0x008e }
        if (r11 == 0) goto L_0x0087;
    L_0x0086:
        goto L_0x0088;
    L_0x0087:
        r11 = r2;
    L_0x0088:
        if (r9 == 0) goto L_0x008d;
    L_0x008a:
        r9.close();
    L_0x008d:
        return r11;
    L_0x008e:
        r10 = move-exception;
        goto L_0x0099;
    L_0x0090:
        zza(r0, r10, r2);	 Catch:{ all -> 0x008e }
        if (r9 == 0) goto L_0x0098;
    L_0x0095:
        r9.close();
    L_0x0098:
        return r2;
    L_0x0099:
        if (r9 == 0) goto L_0x009e;
    L_0x009b:
        r9.close();
    L_0x009e:
        throw r10;
    L_0x009f:
        r9 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x009f }
        throw r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.hi.zza(android.content.ContentResolver, java.lang.String, java.lang.String):java.lang.String");
    }

    private static Map<String, String> zza(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(zzbUa, null, null, strArr, null);
        Map<String, String> treeMap = new TreeMap();
        if (query == null) {
            return treeMap;
        }
        while (query.moveToNext()) {
            try {
                treeMap.put(query.getString(0), query.getString(1));
            } finally {
                query.close();
            }
        }
        return treeMap;
    }

    private static void zza(ContentResolver contentResolver) {
        if (zzbUe == null) {
            zzbUd.set(false);
            zzbUe = new HashMap();
            zzbUj = new Object();
            zzbUk = false;
            contentResolver.registerContentObserver(CONTENT_URI, true, new hj(null));
            return;
        }
        if (zzbUd.getAndSet(false)) {
            zzbUe.clear();
            zzbUf.clear();
            zzbUg.clear();
            zzbUh.clear();
            zzbUi.clear();
            zzbUj = new Object();
            zzbUk = false;
        }
    }

    private static void zza(Object obj, String str, String str2) {
        synchronized (hi.class) {
            if (obj == zzbUj) {
                zzbUe.put(str, str2);
            }
        }
    }

    private static Object zzb(ContentResolver contentResolver) {
        Object obj;
        synchronized (hi.class) {
            zza(contentResolver);
            obj = zzbUj;
        }
        return obj;
    }

    /* JADX WARNING: Missing block: B:22:0x006c, code skipped:
            if (r9.length != 0) goto L_0x006e;
     */
    public static void zzb(android.content.ContentResolver r8, java.lang.String... r9) {
        /*
        r0 = r9.length;
        if (r0 != 0) goto L_0x0004;
    L_0x0003:
        return;
    L_0x0004:
        r0 = com.google.android.gms.internal.hi.class;
        monitor-enter(r0);
        zza(r8);	 Catch:{ all -> 0x0077 }
        r1 = zzbUl;	 Catch:{ all -> 0x0077 }
        r1 = r1.length;	 Catch:{ all -> 0x0077 }
        r2 = r9.length;	 Catch:{ all -> 0x0077 }
        r1 = r1 + r2;
        r1 = r1 << 2;
        r1 = r1 / 3;
        r1 = r1 + 1;
        r2 = new java.util.HashSet;	 Catch:{ all -> 0x0077 }
        r2.<init>(r1);	 Catch:{ all -> 0x0077 }
        r1 = zzbUl;	 Catch:{ all -> 0x0077 }
        r1 = java.util.Arrays.asList(r1);	 Catch:{ all -> 0x0077 }
        r2.addAll(r1);	 Catch:{ all -> 0x0077 }
        r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0077 }
        r1.<init>();	 Catch:{ all -> 0x0077 }
        r3 = r9.length;	 Catch:{ all -> 0x0077 }
        r4 = 0;
        r5 = 0;
    L_0x002b:
        if (r5 >= r3) goto L_0x003b;
    L_0x002d:
        r6 = r9[r5];	 Catch:{ all -> 0x0077 }
        r7 = r2.add(r6);	 Catch:{ all -> 0x0077 }
        if (r7 == 0) goto L_0x0038;
    L_0x0035:
        r1.add(r6);	 Catch:{ all -> 0x0077 }
    L_0x0038:
        r5 = r5 + 1;
        goto L_0x002b;
    L_0x003b:
        r9 = r1.isEmpty();	 Catch:{ all -> 0x0077 }
        if (r9 == 0) goto L_0x0044;
    L_0x0041:
        r9 = new java.lang.String[r4];	 Catch:{ all -> 0x0077 }
        goto L_0x005e;
    L_0x0044:
        r9 = r2.size();	 Catch:{ all -> 0x0077 }
        r9 = new java.lang.String[r9];	 Catch:{ all -> 0x0077 }
        r9 = r2.toArray(r9);	 Catch:{ all -> 0x0077 }
        r9 = (java.lang.String[]) r9;	 Catch:{ all -> 0x0077 }
        zzbUl = r9;	 Catch:{ all -> 0x0077 }
        r9 = r1.size();	 Catch:{ all -> 0x0077 }
        r9 = new java.lang.String[r9];	 Catch:{ all -> 0x0077 }
        r9 = r1.toArray(r9);	 Catch:{ all -> 0x0077 }
        r9 = (java.lang.String[]) r9;	 Catch:{ all -> 0x0077 }
    L_0x005e:
        r1 = zzbUk;	 Catch:{ all -> 0x0077 }
        if (r1 == 0) goto L_0x0072;
    L_0x0062:
        r1 = zzbUe;	 Catch:{ all -> 0x0077 }
        r1 = r1.isEmpty();	 Catch:{ all -> 0x0077 }
        if (r1 == 0) goto L_0x006b;
    L_0x006a:
        goto L_0x0072;
    L_0x006b:
        r1 = r9.length;	 Catch:{ all -> 0x0077 }
        if (r1 == 0) goto L_0x0075;
    L_0x006e:
        zzc(r8, r9);	 Catch:{ all -> 0x0077 }
        goto L_0x0075;
    L_0x0072:
        r9 = zzbUl;	 Catch:{ all -> 0x0077 }
        goto L_0x006e;
    L_0x0075:
        monitor-exit(r0);	 Catch:{ all -> 0x0077 }
        return;
    L_0x0077:
        r8 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0077 }
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.hi.zzb(android.content.ContentResolver, java.lang.String[]):void");
    }

    private static void zzc(ContentResolver contentResolver, String[] strArr) {
        zzbUe.putAll(zza(contentResolver, strArr));
        zzbUk = true;
    }
}
