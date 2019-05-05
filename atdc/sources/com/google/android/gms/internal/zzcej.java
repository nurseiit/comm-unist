package com.google.android.gms.internal;

import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

final class zzcej extends zzchj {
    zzcej(zzcgl zzcgl) {
        super(zzcgl);
    }

    private final Boolean zza(double d, zzcjp zzcjp) {
        try {
            return zza(new BigDecimal(d), zzcjp, Math.ulp(d));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private final Boolean zza(long j, zzcjp zzcjp) {
        try {
            return zza(new BigDecimal(j), zzcjp, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private final Boolean zza(zzcjn zzcjn, zzcjw zzcjw, long j) {
        if (zzcjn.zzbuQ != null) {
            Boolean zza = zza(j, zzcjn.zzbuQ);
            if (zza == null) {
                return null;
            }
            if (!zza.booleanValue()) {
                return Boolean.valueOf(false);
            }
        }
        HashSet hashSet = new HashSet();
        for (zzcjo zzcjo : zzcjn.zzbuO) {
            if (TextUtils.isEmpty(zzcjo.zzbuV)) {
                zzwF().zzyz().zzj("null or empty param name in filter. event", zzwA().zzdW(zzcjw.name));
                return null;
            }
            hashSet.add(zzcjo.zzbuV);
        }
        ArrayMap arrayMap = new ArrayMap();
        for (zzcjx zzcjx : zzcjw.zzbvw) {
            if (hashSet.contains(zzcjx.name)) {
                Object obj;
                Object obj2;
                if (zzcjx.zzbvA != null) {
                    obj = zzcjx.name;
                    obj2 = zzcjx.zzbvA;
                } else if (zzcjx.zzbuB != null) {
                    obj = zzcjx.name;
                    obj2 = zzcjx.zzbuB;
                } else if (zzcjx.zzaIF != null) {
                    obj = zzcjx.name;
                    obj2 = zzcjx.zzaIF;
                } else {
                    zzwF().zzyz().zze("Unknown value for param. event, param", zzwA().zzdW(zzcjw.name), zzwA().zzdX(zzcjx.name));
                    return null;
                }
                arrayMap.put(obj, obj2);
            }
        }
        for (zzcjo zzcjo2 : zzcjn.zzbuO) {
            boolean equals = Boolean.TRUE.equals(zzcjo2.zzbuU);
            String str = zzcjo2.zzbuV;
            if (TextUtils.isEmpty(str)) {
                zzwF().zzyz().zzj("Event has empty param name. event", zzwA().zzdW(zzcjw.name));
                return null;
            }
            Object obj3 = arrayMap.get(str);
            Boolean zza2;
            if (obj3 instanceof Long) {
                if (zzcjo2.zzbuT == null) {
                    zzwF().zzyz().zze("No number filter for long param. event, param", zzwA().zzdW(zzcjw.name), zzwA().zzdX(str));
                    return null;
                }
                zza2 = zza(((Long) obj3).longValue(), zzcjo2.zzbuT);
                if (zza2 == null) {
                    return null;
                }
                if (((1 ^ zza2.booleanValue()) ^ equals) != 0) {
                    return Boolean.valueOf(false);
                }
            } else if (obj3 instanceof Double) {
                if (zzcjo2.zzbuT == null) {
                    zzwF().zzyz().zze("No number filter for double param. event, param", zzwA().zzdW(zzcjw.name), zzwA().zzdX(str));
                    return null;
                }
                zza2 = zza(((Double) obj3).doubleValue(), zzcjo2.zzbuT);
                if (zza2 == null) {
                    return null;
                }
                if (((1 ^ zza2.booleanValue()) ^ equals) != 0) {
                    return Boolean.valueOf(false);
                }
            } else if (obj3 instanceof String) {
                if (zzcjo2.zzbuS != null) {
                    zza2 = zza((String) obj3, zzcjo2.zzbuS);
                } else if (zzcjo2.zzbuT != null) {
                    String str2 = (String) obj3;
                    if (zzcjl.zzez(str2)) {
                        zza2 = zza(str2, zzcjo2.zzbuT);
                    } else {
                        zzwF().zzyz().zze("Invalid param value for number filter. event, param", zzwA().zzdW(zzcjw.name), zzwA().zzdX(str));
                        return null;
                    }
                } else {
                    zzwF().zzyz().zze("No filter for String param. event, param", zzwA().zzdW(zzcjw.name), zzwA().zzdX(str));
                    return null;
                }
                if (zza2 == null) {
                    return null;
                }
                if (((1 ^ zza2.booleanValue()) ^ equals) != 0) {
                    return Boolean.valueOf(false);
                }
            } else if (obj3 == null) {
                zzwF().zzyD().zze("Missing param for filter. event, param", zzwA().zzdW(zzcjw.name), zzwA().zzdX(str));
                return Boolean.valueOf(false);
            } else {
                zzwF().zzyz().zze("Unknown param type. event, param", zzwA().zzdW(zzcjw.name), zzwA().zzdX(str));
                return null;
            }
        }
        return Boolean.valueOf(true);
    }

    private static Boolean zza(Boolean bool, boolean z) {
        return bool == null ? null : Boolean.valueOf(bool.booleanValue() ^ z);
    }

    private final Boolean zza(String str, int i, boolean z, String str2, List<String> list, String str3) {
        if (str == null) {
            return null;
        }
        Object str4;
        boolean startsWith;
        if (i == 6) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!(z || i == 1)) {
            str4 = str4.toUpperCase(Locale.ENGLISH);
        }
        switch (i) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str4).matches());
                } catch (PatternSyntaxException unused) {
                    zzwF().zzyz().zzj("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
            case 2:
                startsWith = str4.startsWith(str2);
                break;
            case 3:
                startsWith = str4.endsWith(str2);
                break;
            case 4:
                startsWith = str4.contains(str2);
                break;
            case 5:
                startsWith = str4.equals(str2);
                break;
            case 6:
                startsWith = list.contains(str4);
                break;
            default:
                return null;
        }
        return Boolean.valueOf(startsWith);
    }

    private final Boolean zza(String str, zzcjp zzcjp) {
        if (!zzcjl.zzez(str)) {
            return null;
        }
        try {
            return zza(new BigDecimal(str), zzcjp, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private final Boolean zza(String str, zzcjr zzcjr) {
        zzbo.zzu(zzcjr);
        if (str == null || zzcjr.zzbve == null || zzcjr.zzbve.intValue() == 0) {
            return null;
        }
        List list;
        if (zzcjr.zzbve.intValue() == 6) {
            if (zzcjr.zzbvh == null || zzcjr.zzbvh.length == 0) {
                return null;
            }
        } else if (zzcjr.zzbvf == null) {
            return null;
        }
        int intValue = zzcjr.zzbve.intValue();
        boolean z = zzcjr.zzbvg != null && zzcjr.zzbvg.booleanValue();
        String toUpperCase = (z || intValue == 1 || intValue == 6) ? zzcjr.zzbvf : zzcjr.zzbvf.toUpperCase(Locale.ENGLISH);
        String str2 = toUpperCase;
        if (zzcjr.zzbvh == null) {
            list = null;
        } else {
            String[] strArr = zzcjr.zzbvh;
            if (z) {
                list = Arrays.asList(strArr);
            } else {
                ArrayList arrayList = new ArrayList();
                for (String toUpperCase2 : strArr) {
                    arrayList.add(toUpperCase2.toUpperCase(Locale.ENGLISH));
                }
                list = arrayList;
            }
        }
        return zza(str, intValue, z, str2, list, intValue == 1 ? str2 : null);
    }

    /* JADX WARNING: Missing block: B:36:0x0070, code skipped:
            if (r3 != null) goto L_0x0072;
     */
    private static java.lang.Boolean zza(java.math.BigDecimal r7, com.google.android.gms.internal.zzcjp r8, double r9) {
        /*
        com.google.android.gms.common.internal.zzbo.zzu(r8);
        r0 = r8.zzbuW;
        r1 = 0;
        if (r0 == 0) goto L_0x00ec;
    L_0x0008:
        r0 = r8.zzbuW;
        r0 = r0.intValue();
        if (r0 != 0) goto L_0x0011;
    L_0x0010:
        return r1;
    L_0x0011:
        r0 = r8.zzbuW;
        r0 = r0.intValue();
        r2 = 4;
        if (r0 != r2) goto L_0x0023;
    L_0x001a:
        r0 = r8.zzbuZ;
        if (r0 == 0) goto L_0x0022;
    L_0x001e:
        r0 = r8.zzbva;
        if (r0 != 0) goto L_0x0028;
    L_0x0022:
        return r1;
    L_0x0023:
        r0 = r8.zzbuY;
        if (r0 != 0) goto L_0x0028;
    L_0x0027:
        return r1;
    L_0x0028:
        r0 = r8.zzbuW;
        r0 = r0.intValue();
        r3 = r8.zzbuW;
        r3 = r3.intValue();
        if (r3 != r2) goto L_0x0059;
    L_0x0036:
        r3 = r8.zzbuZ;
        r3 = com.google.android.gms.internal.zzcjl.zzez(r3);
        if (r3 == 0) goto L_0x0058;
    L_0x003e:
        r3 = r8.zzbva;
        r3 = com.google.android.gms.internal.zzcjl.zzez(r3);
        if (r3 != 0) goto L_0x0047;
    L_0x0046:
        return r1;
    L_0x0047:
        r3 = new java.math.BigDecimal;	 Catch:{ NumberFormatException -> 0x0058 }
        r4 = r8.zzbuZ;	 Catch:{ NumberFormatException -> 0x0058 }
        r3.<init>(r4);	 Catch:{ NumberFormatException -> 0x0058 }
        r4 = new java.math.BigDecimal;	 Catch:{ NumberFormatException -> 0x0058 }
        r8 = r8.zzbva;	 Catch:{ NumberFormatException -> 0x0058 }
        r4.<init>(r8);	 Catch:{ NumberFormatException -> 0x0058 }
        r8 = r3;
        r3 = r1;
        goto L_0x006b;
    L_0x0058:
        return r1;
    L_0x0059:
        r3 = r8.zzbuY;
        r3 = com.google.android.gms.internal.zzcjl.zzez(r3);
        if (r3 != 0) goto L_0x0062;
    L_0x0061:
        return r1;
    L_0x0062:
        r3 = new java.math.BigDecimal;	 Catch:{ NumberFormatException -> 0x00ec }
        r8 = r8.zzbuY;	 Catch:{ NumberFormatException -> 0x00ec }
        r3.<init>(r8);	 Catch:{ NumberFormatException -> 0x00ec }
        r8 = r1;
        r4 = r8;
    L_0x006b:
        if (r0 != r2) goto L_0x0070;
    L_0x006d:
        if (r8 != 0) goto L_0x0072;
    L_0x006f:
        return r1;
    L_0x0070:
        if (r3 == 0) goto L_0x00ec;
    L_0x0072:
        r2 = -1;
        r5 = 0;
        r6 = 1;
        switch(r0) {
            case 1: goto L_0x00e0;
            case 2: goto L_0x00d4;
            case 3: goto L_0x008b;
            case 4: goto L_0x0079;
            default: goto L_0x0078;
        };
    L_0x0078:
        return r1;
    L_0x0079:
        r8 = r7.compareTo(r8);
        if (r8 == r2) goto L_0x0086;
    L_0x007f:
        r7 = r7.compareTo(r4);
        if (r7 == r6) goto L_0x0086;
    L_0x0085:
        r5 = 1;
    L_0x0086:
        r7 = java.lang.Boolean.valueOf(r5);
        return r7;
    L_0x008b:
        r0 = 0;
        r8 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1));
        if (r8 == 0) goto L_0x00c8;
    L_0x0091:
        r8 = new java.math.BigDecimal;
        r8.<init>(r9);
        r0 = new java.math.BigDecimal;
        r1 = 2;
        r0.<init>(r1);
        r8 = r8.multiply(r0);
        r8 = r3.subtract(r8);
        r8 = r7.compareTo(r8);
        if (r8 != r6) goto L_0x00c3;
    L_0x00aa:
        r8 = new java.math.BigDecimal;
        r8.<init>(r9);
        r9 = new java.math.BigDecimal;
        r9.<init>(r1);
        r8 = r8.multiply(r9);
        r8 = r3.add(r8);
        r7 = r7.compareTo(r8);
        if (r7 != r2) goto L_0x00c3;
    L_0x00c2:
        r5 = 1;
    L_0x00c3:
        r7 = java.lang.Boolean.valueOf(r5);
        return r7;
    L_0x00c8:
        r7 = r7.compareTo(r3);
        if (r7 != 0) goto L_0x00cf;
    L_0x00ce:
        r5 = 1;
    L_0x00cf:
        r7 = java.lang.Boolean.valueOf(r5);
        return r7;
    L_0x00d4:
        r7 = r7.compareTo(r3);
        if (r7 != r6) goto L_0x00db;
    L_0x00da:
        r5 = 1;
    L_0x00db:
        r7 = java.lang.Boolean.valueOf(r5);
        return r7;
    L_0x00e0:
        r7 = r7.compareTo(r3);
        if (r7 != r2) goto L_0x00e7;
    L_0x00e6:
        r5 = 1;
    L_0x00e7:
        r7 = java.lang.Boolean.valueOf(r5);
        return r7;
    L_0x00ec:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcej.zza(java.math.BigDecimal, com.google.android.gms.internal.zzcjp, double):java.lang.Boolean");
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x05a0  */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x059d  */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x05bf  */
    /* JADX WARNING: Removed duplicated region for block: B:143:0x05a6  */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x059d  */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x05a0  */
    /* JADX WARNING: Removed duplicated region for block: B:143:0x05a6  */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x05bf  */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x05a0  */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x059d  */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x05bf  */
    /* JADX WARNING: Removed duplicated region for block: B:143:0x05a6  */
    @android.support.annotation.WorkerThread
    public final com.google.android.gms.internal.zzcjv[] zza(java.lang.String r45, com.google.android.gms.internal.zzcjw[] r46, com.google.android.gms.internal.zzckb[] r47) {
        /*
        r44 = this;
        r1 = r44;
        r11 = r45;
        r12 = r46;
        r13 = r47;
        com.google.android.gms.common.internal.zzbo.zzcF(r45);
        r14 = new java.util.HashSet;
        r14.<init>();
        r15 = new android.support.v4.util.ArrayMap;
        r15.<init>();
        r9 = new android.support.v4.util.ArrayMap;
        r9.<init>();
        r10 = new android.support.v4.util.ArrayMap;
        r10.<init>();
        r2 = r44.zzwz();
        r2 = r2.zzdT(r11);
        if (r2 == 0) goto L_0x00fc;
    L_0x0029:
        r3 = r2.keySet();
        r3 = r3.iterator();
    L_0x0031:
        r4 = r3.hasNext();
        if (r4 == 0) goto L_0x00fc;
    L_0x0037:
        r4 = r3.next();
        r4 = (java.lang.Integer) r4;
        r4 = r4.intValue();
        r5 = java.lang.Integer.valueOf(r4);
        r5 = r2.get(r5);
        r5 = (com.google.android.gms.internal.zzcka) r5;
        r6 = java.lang.Integer.valueOf(r4);
        r6 = r9.get(r6);
        r6 = (java.util.BitSet) r6;
        r8 = java.lang.Integer.valueOf(r4);
        r8 = r10.get(r8);
        r8 = (java.util.BitSet) r8;
        if (r6 != 0) goto L_0x0079;
    L_0x0061:
        r6 = new java.util.BitSet;
        r6.<init>();
        r8 = java.lang.Integer.valueOf(r4);
        r9.put(r8, r6);
        r8 = new java.util.BitSet;
        r8.<init>();
        r7 = java.lang.Integer.valueOf(r4);
        r10.put(r7, r8);
    L_0x0079:
        r17 = r2;
        r7 = 0;
    L_0x007c:
        r2 = r5.zzbwe;
        r2 = r2.length;
        r2 = r2 << 6;
        if (r7 >= r2) goto L_0x00c4;
    L_0x0083:
        r2 = r5.zzbwe;
        r2 = com.google.android.gms.internal.zzcjl.zza(r2, r7);
        if (r2 == 0) goto L_0x00b5;
    L_0x008b:
        r2 = r44.zzwF();
        r2 = r2.zzyD();
        r18 = r3;
        r3 = "Filter already evaluated. audience ID, filter ID";
        r19 = r9;
        r9 = java.lang.Integer.valueOf(r4);
        r20 = r10;
        r10 = java.lang.Integer.valueOf(r7);
        r2.zze(r3, r9, r10);
        r8.set(r7);
        r2 = r5.zzbwf;
        r2 = com.google.android.gms.internal.zzcjl.zza(r2, r7);
        if (r2 == 0) goto L_0x00bb;
    L_0x00b1:
        r6.set(r7);
        goto L_0x00bb;
    L_0x00b5:
        r18 = r3;
        r19 = r9;
        r20 = r10;
    L_0x00bb:
        r7 = r7 + 1;
        r3 = r18;
        r9 = r19;
        r10 = r20;
        goto L_0x007c;
    L_0x00c4:
        r18 = r3;
        r19 = r9;
        r20 = r10;
        r2 = new com.google.android.gms.internal.zzcjv;
        r2.<init>();
        r3 = java.lang.Integer.valueOf(r4);
        r15.put(r3, r2);
        r7 = 0;
        r3 = java.lang.Boolean.valueOf(r7);
        r2.zzbvu = r3;
        r2.zzbvt = r5;
        r3 = new com.google.android.gms.internal.zzcka;
        r3.<init>();
        r2.zzbvs = r3;
        r3 = r2.zzbvs;
        r4 = com.google.android.gms.internal.zzcjl.zza(r6);
        r3.zzbwf = r4;
        r2 = r2.zzbvs;
        r3 = com.google.android.gms.internal.zzcjl.zza(r8);
        r2.zzbwe = r3;
        r2 = r17;
        r3 = r18;
        goto L_0x0031;
    L_0x00fc:
        r19 = r9;
        r20 = r10;
        r7 = 0;
        if (r12 == 0) goto L_0x034d;
    L_0x0103:
        r5 = new android.support.v4.util.ArrayMap;
        r5.<init>();
        r6 = r12.length;
        r4 = 0;
    L_0x010a:
        if (r4 >= r6) goto L_0x034d;
    L_0x010c:
        r3 = r12[r4];
        r2 = r44.zzwz();
        r7 = r3.name;
        r2 = r2.zzE(r11, r7);
        if (r2 != 0) goto L_0x015d;
    L_0x011a:
        r2 = r44.zzwF();
        r2 = r2.zzyz();
        r7 = "Event aggregate wasn't created during raw event logging. appId, event";
        r8 = com.google.android.gms.internal.zzcfl.zzdZ(r45);
        r9 = r44.zzwA();
        r10 = r3.name;
        r9 = r9.zzdW(r10);
        r2.zze(r7, r8, r9);
        r16 = new com.google.android.gms.internal.zzcev;
        r7 = r3.name;
        r8 = 1;
        r17 = 1;
        r2 = r3.zzbvx;
        r21 = r2.longValue();
        r2 = r16;
        r10 = r3;
        r3 = r11;
        r23 = r4;
        r4 = r7;
        r7 = r5;
        r24 = r6;
        r5 = r8;
        r9 = r7;
        r7 = r17;
        r13 = r9;
        r12 = r10;
        r26 = r19;
        r25 = r20;
        r9 = r21;
        r2.<init>(r3, r4, r5, r7, r9);
        goto L_0x016d;
    L_0x015d:
        r12 = r3;
        r23 = r4;
        r13 = r5;
        r24 = r6;
        r26 = r19;
        r25 = r20;
        r16 = r2.zzys();
        r2 = r16;
    L_0x016d:
        r3 = r44.zzwz();
        r3.zza(r2);
        r2 = r2.zzbpG;
        r4 = r12.name;
        r4 = r13.get(r4);
        r4 = (java.util.Map) r4;
        if (r4 != 0) goto L_0x0196;
    L_0x0180:
        r4 = r44.zzwz();
        r5 = r12.name;
        r4 = r4.zzJ(r11, r5);
        if (r4 != 0) goto L_0x0191;
    L_0x018c:
        r4 = new android.support.v4.util.ArrayMap;
        r4.<init>();
    L_0x0191:
        r5 = r12.name;
        r13.put(r5, r4);
    L_0x0196:
        r5 = r4.keySet();
        r5 = r5.iterator();
    L_0x019e:
        r6 = r5.hasNext();
        if (r6 == 0) goto L_0x0332;
    L_0x01a4:
        r6 = r5.next();
        r6 = (java.lang.Integer) r6;
        r6 = r6.intValue();
        r7 = java.lang.Integer.valueOf(r6);
        r7 = r14.contains(r7);
        if (r7 == 0) goto L_0x01ca;
    L_0x01b8:
        r7 = r44.zzwF();
        r7 = r7.zzyD();
        r8 = "Skipping failed audience ID";
        r6 = java.lang.Integer.valueOf(r6);
        r7.zzj(r8, r6);
        goto L_0x019e;
    L_0x01ca:
        r7 = java.lang.Integer.valueOf(r6);
        r7 = r15.get(r7);
        r7 = (com.google.android.gms.internal.zzcjv) r7;
        r8 = java.lang.Integer.valueOf(r6);
        r9 = r26;
        r8 = r9.get(r8);
        r8 = (java.util.BitSet) r8;
        r10 = java.lang.Integer.valueOf(r6);
        r27 = r5;
        r5 = r25;
        r10 = r5.get(r10);
        r10 = (java.util.BitSet) r10;
        if (r7 != 0) goto L_0x021c;
    L_0x01f0:
        r7 = new com.google.android.gms.internal.zzcjv;
        r7.<init>();
        r8 = java.lang.Integer.valueOf(r6);
        r15.put(r8, r7);
        r8 = 1;
        r10 = java.lang.Boolean.valueOf(r8);
        r7.zzbvu = r10;
        r7 = new java.util.BitSet;
        r7.<init>();
        r10 = java.lang.Integer.valueOf(r6);
        r9.put(r10, r7);
        r10 = new java.util.BitSet;
        r10.<init>();
        r8 = java.lang.Integer.valueOf(r6);
        r5.put(r8, r10);
        r8 = r7;
    L_0x021c:
        r7 = java.lang.Integer.valueOf(r6);
        r7 = r4.get(r7);
        r7 = (java.util.List) r7;
        r7 = r7.iterator();
    L_0x022a:
        r16 = r7.hasNext();
        if (r16 == 0) goto L_0x032a;
    L_0x0230:
        r16 = r7.next();
        r28 = r4;
        r4 = r16;
        r4 = (com.google.android.gms.internal.zzcjn) r4;
        r29 = r5;
        r5 = r44.zzwF();
        r30 = r7;
        r7 = 2;
        r5 = r5.zzz(r7);
        if (r5 == 0) goto L_0x0282;
    L_0x0249:
        r5 = r44.zzwF();
        r5 = r5.zzyD();
        r7 = "Evaluating filter. audience, filter, event";
        r31 = r13;
        r13 = java.lang.Integer.valueOf(r6);
        r32 = r9;
        r9 = r4.zzbuM;
        r33 = r15;
        r15 = r44.zzwA();
        r11 = r4.zzbuN;
        r11 = r15.zzdW(r11);
        r5.zzd(r7, r13, r9, r11);
        r5 = r44.zzwF();
        r5 = r5.zzyD();
        r7 = "Filter definition";
        r9 = r44.zzwA();
        r9 = r9.zza(r4);
        r5.zzj(r7, r9);
        goto L_0x0288;
    L_0x0282:
        r32 = r9;
        r31 = r13;
        r33 = r15;
    L_0x0288:
        r5 = r4.zzbuM;
        if (r5 == 0) goto L_0x0301;
    L_0x028c:
        r5 = r4.zzbuM;
        r5 = r5.intValue();
        r7 = 256; // 0x100 float:3.59E-43 double:1.265E-321;
        if (r5 <= r7) goto L_0x0298;
    L_0x0296:
        goto L_0x0303;
    L_0x0298:
        r5 = r4.zzbuM;
        r5 = r5.intValue();
        r5 = r8.get(r5);
        if (r5 == 0) goto L_0x02c7;
    L_0x02a4:
        r5 = r44.zzwF();
        r5 = r5.zzyD();
        r9 = "Event filter already evaluated true. audience ID, filter ID";
        r11 = java.lang.Integer.valueOf(r6);
        r4 = r4.zzbuM;
        r5.zze(r9, r11, r4);
    L_0x02b7:
        r4 = r28;
        r5 = r29;
        r7 = r30;
        r13 = r31;
        r9 = r32;
        r15 = r33;
        r11 = r45;
        goto L_0x022a;
    L_0x02c7:
        r5 = r1.zza(r4, r12, r2);
        r9 = r44.zzwF();
        r9 = r9.zzyD();
        r11 = "Event filter result";
        if (r5 != 0) goto L_0x02da;
    L_0x02d7:
        r13 = "null";
        goto L_0x02db;
    L_0x02da:
        r13 = r5;
    L_0x02db:
        r9.zzj(r11, r13);
        if (r5 != 0) goto L_0x02e8;
    L_0x02e0:
        r4 = java.lang.Integer.valueOf(r6);
        r14.add(r4);
        goto L_0x02b7;
    L_0x02e8:
        r9 = r4.zzbuM;
        r9 = r9.intValue();
        r10.set(r9);
        r5 = r5.booleanValue();
        if (r5 == 0) goto L_0x02b7;
    L_0x02f7:
        r4 = r4.zzbuM;
        r4 = r4.intValue();
        r8.set(r4);
        goto L_0x02b7;
    L_0x0301:
        r7 = 256; // 0x100 float:3.59E-43 double:1.265E-321;
    L_0x0303:
        r5 = r44.zzwF();
        r5 = r5.zzyz();
        r9 = "Invalid event filter ID. appId, id";
        r11 = r45;
        r13 = com.google.android.gms.internal.zzcfl.zzdZ(r45);
        r4 = r4.zzbuM;
        r4 = java.lang.String.valueOf(r4);
        r5.zze(r9, r13, r4);
        r4 = r28;
        r5 = r29;
        r7 = r30;
        r13 = r31;
        r9 = r32;
        r15 = r33;
        goto L_0x022a;
    L_0x032a:
        r25 = r5;
        r26 = r9;
        r5 = r27;
        goto L_0x019e;
    L_0x0332:
        r31 = r13;
        r33 = r15;
        r29 = r25;
        r32 = r26;
        r7 = 256; // 0x100 float:3.59E-43 double:1.265E-321;
        r4 = r23 + 1;
        r6 = r24;
        r20 = r29;
        r5 = r31;
        r19 = r32;
        r7 = 0;
        r12 = r46;
        r13 = r47;
        goto L_0x010a;
    L_0x034d:
        r33 = r15;
        r32 = r19;
        r29 = r20;
        r7 = 256; // 0x100 float:3.59E-43 double:1.265E-321;
        r4 = r29;
        r3 = r47;
        if (r3 == 0) goto L_0x0626;
    L_0x035b:
        r5 = new android.support.v4.util.ArrayMap;
        r5.<init>();
        r6 = r3.length;
        r8 = 0;
    L_0x0362:
        if (r8 >= r6) goto L_0x0626;
    L_0x0364:
        r9 = r3[r8];
        r10 = r9.name;
        r10 = r5.get(r10);
        r10 = (java.util.Map) r10;
        if (r10 != 0) goto L_0x0386;
    L_0x0370:
        r10 = r44.zzwz();
        r12 = r9.name;
        r10 = r10.zzK(r11, r12);
        if (r10 != 0) goto L_0x0381;
    L_0x037c:
        r10 = new android.support.v4.util.ArrayMap;
        r10.<init>();
    L_0x0381:
        r12 = r9.name;
        r5.put(r12, r10);
    L_0x0386:
        r12 = r10.keySet();
        r12 = r12.iterator();
    L_0x038e:
        r13 = r12.hasNext();
        if (r13 == 0) goto L_0x0614;
    L_0x0394:
        r13 = r12.next();
        r13 = (java.lang.Integer) r13;
        r13 = r13.intValue();
        r15 = java.lang.Integer.valueOf(r13);
        r15 = r14.contains(r15);
        if (r15 == 0) goto L_0x03ba;
    L_0x03a8:
        r15 = r44.zzwF();
        r15 = r15.zzyD();
        r2 = "Skipping failed audience ID";
        r13 = java.lang.Integer.valueOf(r13);
        r15.zzj(r2, r13);
        goto L_0x038e;
    L_0x03ba:
        r2 = java.lang.Integer.valueOf(r13);
        r15 = r33;
        r2 = r15.get(r2);
        r2 = (com.google.android.gms.internal.zzcjv) r2;
        r7 = java.lang.Integer.valueOf(r13);
        r3 = r32;
        r7 = r3.get(r7);
        r7 = (java.util.BitSet) r7;
        r34 = r5;
        r5 = java.lang.Integer.valueOf(r13);
        r5 = r4.get(r5);
        r5 = (java.util.BitSet) r5;
        if (r2 != 0) goto L_0x040c;
    L_0x03e0:
        r2 = new com.google.android.gms.internal.zzcjv;
        r2.<init>();
        r5 = java.lang.Integer.valueOf(r13);
        r15.put(r5, r2);
        r5 = 1;
        r7 = java.lang.Boolean.valueOf(r5);
        r2.zzbvu = r7;
        r7 = new java.util.BitSet;
        r7.<init>();
        r2 = java.lang.Integer.valueOf(r13);
        r3.put(r2, r7);
        r2 = new java.util.BitSet;
        r2.<init>();
        r5 = java.lang.Integer.valueOf(r13);
        r4.put(r5, r2);
        r5 = r2;
    L_0x040c:
        r2 = java.lang.Integer.valueOf(r13);
        r2 = r10.get(r2);
        r2 = (java.util.List) r2;
        r2 = r2.iterator();
    L_0x041a:
        r16 = r2.hasNext();
        if (r16 == 0) goto L_0x0608;
    L_0x0420:
        r16 = r2.next();
        r35 = r2;
        r2 = r16;
        r2 = (com.google.android.gms.internal.zzcjq) r2;
        r36 = r6;
        r6 = r44.zzwF();
        r37 = r10;
        r10 = 2;
        r6 = r6.zzz(r10);
        if (r6 == 0) goto L_0x0474;
    L_0x0439:
        r6 = r44.zzwF();
        r6 = r6.zzyD();
        r10 = "Evaluating filter. audience, filter, property";
        r38 = r12;
        r12 = java.lang.Integer.valueOf(r13);
        r39 = r4;
        r4 = r2.zzbuM;
        r40 = r15;
        r15 = r44.zzwA();
        r41 = r3;
        r3 = r2.zzbvc;
        r3 = r15.zzdY(r3);
        r6.zzd(r10, r12, r4, r3);
        r3 = r44.zzwF();
        r3 = r3.zzyD();
        r4 = "Filter definition";
        r6 = r44.zzwA();
        r6 = r6.zza(r2);
        r3.zzj(r4, r6);
        goto L_0x047c;
    L_0x0474:
        r41 = r3;
        r39 = r4;
        r38 = r12;
        r40 = r15;
    L_0x047c:
        r3 = r2.zzbuM;
        if (r3 == 0) goto L_0x05db;
    L_0x0480:
        r3 = r2.zzbuM;
        r3 = r3.intValue();
        r4 = 256; // 0x100 float:3.59E-43 double:1.265E-321;
        if (r3 <= r4) goto L_0x048c;
    L_0x048a:
        goto L_0x05db;
    L_0x048c:
        r3 = r2.zzbuM;
        r3 = r3.intValue();
        r3 = r7.get(r3);
        if (r3 == 0) goto L_0x04bb;
    L_0x0498:
        r3 = r44.zzwF();
        r3 = r3.zzyD();
        r6 = "Property filter already evaluated true. audience ID, filter ID";
        r10 = java.lang.Integer.valueOf(r13);
        r2 = r2.zzbuM;
        r3.zze(r6, r10, r2);
    L_0x04ab:
        r2 = r35;
        r6 = r36;
        r10 = r37;
        r12 = r38;
        r4 = r39;
        r15 = r40;
        r3 = r41;
        goto L_0x041a;
    L_0x04bb:
        r3 = r2.zzbvd;
        if (r3 != 0) goto L_0x04db;
    L_0x04bf:
        r3 = r44.zzwF();
        r3 = r3.zzyz();
        r6 = "Missing property filter. property";
    L_0x04c9:
        r10 = r44.zzwA();
        r12 = r9.name;
        r10 = r10.zzdY(r12);
        r3.zzj(r6, r10);
        r42 = r5;
    L_0x04d8:
        r3 = 0;
        goto L_0x0591;
    L_0x04db:
        r6 = java.lang.Boolean.TRUE;
        r10 = r3.zzbuU;
        r6 = r6.equals(r10);
        r10 = r9.zzbvA;
        if (r10 == 0) goto L_0x050a;
    L_0x04e7:
        r10 = r3.zzbuT;
        if (r10 != 0) goto L_0x04f6;
    L_0x04eb:
        r3 = r44.zzwF();
        r3 = r3.zzyz();
        r6 = "No number filter for long property. property";
        goto L_0x04c9;
    L_0x04f6:
        r10 = r9.zzbvA;
        r42 = r5;
        r4 = r10.longValue();
        r3 = r3.zzbuT;
        r3 = r1.zza(r4, r3);
    L_0x0504:
        r3 = zza(r3, r6);
        goto L_0x0591;
    L_0x050a:
        r42 = r5;
        r4 = r9.zzbuB;
        if (r4 == 0) goto L_0x0539;
    L_0x0510:
        r4 = r3.zzbuT;
        if (r4 != 0) goto L_0x052c;
    L_0x0514:
        r3 = r44.zzwF();
        r3 = r3.zzyz();
        r4 = "No number filter for double property. property";
    L_0x051e:
        r5 = r44.zzwA();
        r6 = r9.name;
        r5 = r5.zzdY(r6);
        r3.zzj(r4, r5);
        goto L_0x04d8;
    L_0x052c:
        r4 = r9.zzbuB;
        r4 = r4.doubleValue();
        r3 = r3.zzbuT;
        r3 = r1.zza(r4, r3);
        goto L_0x0504;
    L_0x0539:
        r4 = r9.zzaIF;
        if (r4 == 0) goto L_0x0586;
    L_0x053d:
        r4 = r3.zzbuS;
        if (r4 != 0) goto L_0x057c;
    L_0x0541:
        r4 = r3.zzbuT;
        if (r4 != 0) goto L_0x0550;
    L_0x0545:
        r3 = r44.zzwF();
        r3 = r3.zzyz();
        r4 = "No string or number filter defined. property";
        goto L_0x051e;
    L_0x0550:
        r4 = r9.zzaIF;
        r4 = com.google.android.gms.internal.zzcjl.zzez(r4);
        if (r4 == 0) goto L_0x0561;
    L_0x0558:
        r4 = r9.zzaIF;
        r3 = r3.zzbuT;
        r3 = r1.zza(r4, r3);
        goto L_0x0504;
    L_0x0561:
        r3 = r44.zzwF();
        r3 = r3.zzyz();
        r4 = "Invalid user property value for Numeric number filter. property, value";
        r5 = r44.zzwA();
        r6 = r9.name;
        r5 = r5.zzdY(r6);
        r6 = r9.zzaIF;
        r3.zze(r4, r5, r6);
        goto L_0x04d8;
    L_0x057c:
        r4 = r9.zzaIF;
        r3 = r3.zzbuS;
        r3 = r1.zza(r4, r3);
        goto L_0x0504;
    L_0x0586:
        r3 = r44.zzwF();
        r3 = r3.zzyz();
        r4 = "User property has no value, property";
        goto L_0x051e;
    L_0x0591:
        r4 = r44.zzwF();
        r4 = r4.zzyD();
        r5 = "Property filter result";
        if (r3 != 0) goto L_0x05a0;
    L_0x059d:
        r6 = "null";
        goto L_0x05a1;
    L_0x05a0:
        r6 = r3;
    L_0x05a1:
        r4.zzj(r5, r6);
        if (r3 != 0) goto L_0x05bf;
    L_0x05a6:
        r2 = java.lang.Integer.valueOf(r13);
        r14.add(r2);
        r2 = r35;
        r6 = r36;
        r10 = r37;
        r12 = r38;
        r4 = r39;
        r15 = r40;
        r3 = r41;
        r5 = r42;
        goto L_0x041a;
    L_0x05bf:
        r4 = r2.zzbuM;
        r4 = r4.intValue();
        r5 = r42;
        r5.set(r4);
        r3 = r3.booleanValue();
        if (r3 == 0) goto L_0x04ab;
    L_0x05d0:
        r2 = r2.zzbuM;
        r2 = r2.intValue();
        r7.set(r2);
        goto L_0x04ab;
    L_0x05db:
        r3 = r44.zzwF();
        r3 = r3.zzyz();
        r4 = "Invalid property filter ID. appId, id";
        r5 = com.google.android.gms.internal.zzcfl.zzdZ(r45);
        r2 = r2.zzbuM;
        r2 = java.lang.String.valueOf(r2);
        r3.zze(r4, r5, r2);
        r2 = java.lang.Integer.valueOf(r13);
        r14.add(r2);
        r5 = r34;
        r6 = r36;
        r10 = r37;
        r12 = r38;
        r4 = r39;
        r33 = r40;
        r32 = r41;
        goto L_0x060e;
    L_0x0608:
        r32 = r3;
        r33 = r15;
        r5 = r34;
    L_0x060e:
        r3 = r47;
        r7 = 256; // 0x100 float:3.59E-43 double:1.265E-321;
        goto L_0x038e;
    L_0x0614:
        r39 = r4;
        r34 = r5;
        r36 = r6;
        r41 = r32;
        r40 = r33;
        r8 = r8 + 1;
        r3 = r47;
        r7 = 256; // 0x100 float:3.59E-43 double:1.265E-321;
        goto L_0x0362;
    L_0x0626:
        r39 = r4;
        r40 = r33;
        r2 = r32;
        r3 = r2.size();
        r3 = new com.google.android.gms.internal.zzcjv[r3];
        r4 = r2.keySet();
        r4 = r4.iterator();
        r7 = 0;
    L_0x063b:
        r5 = r4.hasNext();
        if (r5 == 0) goto L_0x072a;
    L_0x0641:
        r5 = r4.next();
        r5 = (java.lang.Integer) r5;
        r5 = r5.intValue();
        r6 = java.lang.Integer.valueOf(r5);
        r6 = r14.contains(r6);
        if (r6 != 0) goto L_0x063b;
    L_0x0655:
        r6 = java.lang.Integer.valueOf(r5);
        r8 = r40;
        r6 = r8.get(r6);
        r6 = (com.google.android.gms.internal.zzcjv) r6;
        if (r6 != 0) goto L_0x0668;
    L_0x0663:
        r6 = new com.google.android.gms.internal.zzcjv;
        r6.<init>();
    L_0x0668:
        r9 = r7 + 1;
        r3[r7] = r6;
        r7 = java.lang.Integer.valueOf(r5);
        r6.zzbuI = r7;
        r7 = new com.google.android.gms.internal.zzcka;
        r7.<init>();
        r6.zzbvs = r7;
        r7 = r6.zzbvs;
        r10 = java.lang.Integer.valueOf(r5);
        r10 = r2.get(r10);
        r10 = (java.util.BitSet) r10;
        r10 = com.google.android.gms.internal.zzcjl.zza(r10);
        r7.zzbwf = r10;
        r7 = r6.zzbvs;
        r10 = java.lang.Integer.valueOf(r5);
        r12 = r39;
        r10 = r12.get(r10);
        r10 = (java.util.BitSet) r10;
        r10 = com.google.android.gms.internal.zzcjl.zza(r10);
        r7.zzbwe = r10;
        r7 = r44.zzwz();
        r6 = r6.zzbvs;
        r7.zzkD();
        r7.zzjC();
        com.google.android.gms.common.internal.zzbo.zzcF(r45);
        com.google.android.gms.common.internal.zzbo.zzu(r6);
        r10 = r6.zzLV();	 Catch:{ IOException -> 0x070f }
        r10 = new byte[r10];	 Catch:{ IOException -> 0x070f }
        r13 = r10.length;	 Catch:{ IOException -> 0x070f }
        r15 = 0;
        r13 = com.google.android.gms.internal.adh.zzc(r10, r15, r13);	 Catch:{ IOException -> 0x070f }
        r6.zza(r13);	 Catch:{ IOException -> 0x070f }
        r13.zzLM();	 Catch:{ IOException -> 0x070f }
        r6 = new android.content.ContentValues;
        r6.<init>();
        r13 = "app_id";
        r6.put(r13, r11);
        r13 = "audience_id";
        r5 = java.lang.Integer.valueOf(r5);
        r6.put(r13, r5);
        r5 = "current_results";
        r6.put(r5, r10);
        r5 = r7.getWritableDatabase();	 Catch:{ SQLiteException -> 0x0701 }
        r10 = "audience_filter_values";
        r13 = 5;
        r15 = 0;
        r5 = r5.insertWithOnConflict(r10, r15, r6, r13);	 Catch:{ SQLiteException -> 0x06ff }
        r16 = -1;
        r10 = (r5 > r16 ? 1 : (r5 == r16 ? 0 : -1));
        if (r10 != 0) goto L_0x0723;
    L_0x06ed:
        r5 = r7.zzwF();	 Catch:{ SQLiteException -> 0x06ff }
        r5 = r5.zzyx();	 Catch:{ SQLiteException -> 0x06ff }
        r6 = "Failed to insert filter results (got -1). appId";
        r10 = com.google.android.gms.internal.zzcfl.zzdZ(r45);	 Catch:{ SQLiteException -> 0x06ff }
        r5.zzj(r6, r10);	 Catch:{ SQLiteException -> 0x06ff }
        goto L_0x0723;
    L_0x06ff:
        r0 = move-exception;
        goto L_0x0703;
    L_0x0701:
        r0 = move-exception;
        r15 = 0;
    L_0x0703:
        r5 = r0;
        r6 = r7.zzwF();
        r6 = r6.zzyx();
        r7 = "Error storing filter results. appId";
        goto L_0x071c;
    L_0x070f:
        r0 = move-exception;
        r15 = 0;
        r5 = r0;
        r6 = r7.zzwF();
        r6 = r6.zzyx();
        r7 = "Configuration loss. Failed to serialize filter results. appId";
    L_0x071c:
        r10 = com.google.android.gms.internal.zzcfl.zzdZ(r45);
        r6.zze(r7, r10, r5);
    L_0x0723:
        r40 = r8;
        r7 = r9;
        r39 = r12;
        goto L_0x063b;
    L_0x072a:
        r2 = java.util.Arrays.copyOf(r3, r7);
        r2 = (com.google.android.gms.internal.zzcjv[]) r2;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcej.zza(java.lang.String, com.google.android.gms.internal.zzcjw[], com.google.android.gms.internal.zzckb[]):com.google.android.gms.internal.zzcjv[]");
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
    }
}
