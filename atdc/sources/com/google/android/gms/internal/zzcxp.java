package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;

public final class zzcxp {
    public static double zza(dp<?> dpVar, dp<?> dpVar2) {
        boolean z = false;
        zzbo.zzaf(dpVar != null);
        if (dpVar2 != null) {
            z = true;
        }
        zzbo.zzaf(z);
        double zzb = zzb(dpVar);
        double zzb2 = zzb(dpVar2);
        return (Double.isNaN(zzb) || Double.isNaN(zzb2)) ? Double.NaN : ((zzb == Double.POSITIVE_INFINITY && zzb2 == Double.NEGATIVE_INFINITY) || (zzb == Double.NEGATIVE_INFINITY && zzb2 == Double.POSITIVE_INFINITY)) ? Double.NaN : (!Double.isInfinite(zzb) || Double.isInfinite(zzb2)) ? (Double.isInfinite(zzb) || !Double.isInfinite(zzb2)) ? zzb + zzb2 : zzb2 : zzb;
    }

    public static boolean zza(dp<?> dpVar) {
        zzbo.zzaf(dpVar != null);
        if (dpVar == dv.zzbLu || dpVar == dv.zzbLt) {
            return false;
        }
        if (dpVar instanceof ds) {
            return ((ds) dpVar).zzDn().booleanValue();
        }
        if (dpVar instanceof dt) {
            dt dtVar = (dt) dpVar;
            if (dtVar.zzDo().doubleValue() == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || dtVar.zzDo().doubleValue() == -0.0d || Double.isNaN(dtVar.zzDo().doubleValue())) {
                return false;
            }
        } else if (dpVar instanceof eb) {
            if (((eb) dpVar).value().isEmpty()) {
                return false;
            }
        } else if (zzf(dpVar)) {
            String valueOf = String.valueOf(dpVar.toString());
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 33);
            stringBuilder.append("Illegal type given to isTruthy: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(".");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        return true;
    }

    public static double zzb(dp<?> dpVar) {
        dp dpVar2;
        while (true) {
            zzbo.zzaf(dpVar2 != null);
            if (dpVar2 == dv.zzbLu) {
                return Double.NaN;
            }
            if (dpVar2 == dv.zzbLt) {
                return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            }
            if (dpVar2 instanceof ds) {
                return ((Boolean) ((ds) dpVar2).zzDn()).booleanValue() ? 1.0d : FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            } else {
                if (dpVar2 instanceof dt) {
                    return ((dt) dpVar2).zzDo().doubleValue();
                }
                if (dpVar2 instanceof dw) {
                    dw dwVar = (dw) dpVar2;
                    if (!dwVar.zzDs().isEmpty()) {
                        if (dwVar.zzDs().size() != 1) {
                            break;
                        }
                        dpVar2 = new eb(zzd(dwVar.zzbG(0)));
                    } else {
                        return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    }
                } else if (dpVar2 instanceof eb) {
                    eb ebVar = (eb) dpVar2;
                    if (ebVar.value().isEmpty()) {
                        return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    }
                    try {
                        return Double.parseDouble(ebVar.value());
                    } catch (NumberFormatException unused) {
                        return Double.NaN;
                    }
                }
            }
        }
        if (!zzf(dpVar2)) {
            return Double.NaN;
        }
        String valueOf = String.valueOf(dpVar2.toString());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 41);
        stringBuilder.append("Illegal type given to numberEquivalent: ");
        stringBuilder.append(valueOf);
        stringBuilder.append(".");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    /* JADX WARNING: Missing block: B:51:0x00f0, code skipped:
            return false;
     */
    public static boolean zzb(com.google.android.gms.internal.dp<?> r9, com.google.android.gms.internal.dp<?> r10) {
        /*
        r0 = 1;
        r1 = 0;
        if (r9 == 0) goto L_0x0006;
    L_0x0004:
        r2 = 1;
        goto L_0x0007;
    L_0x0006:
        r2 = 0;
    L_0x0007:
        com.google.android.gms.common.internal.zzbo.zzaf(r2);
        if (r10 == 0) goto L_0x000e;
    L_0x000c:
        r2 = 1;
        goto L_0x000f;
    L_0x000e:
        r2 = 0;
    L_0x000f:
        com.google.android.gms.common.internal.zzbo.zzaf(r2);
        r2 = zzf(r9);
        if (r2 == 0) goto L_0x0046;
    L_0x0018:
        r10 = new java.lang.IllegalArgumentException;
        r9 = r9.toString();
        r9 = java.lang.String.valueOf(r9);
        r0 = java.lang.String.valueOf(r9);
        r0 = r0.length();
        r0 = r0 + 50;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Illegal type given to abstractRelationalCompare: ";
        r1.append(r0);
        r1.append(r9);
        r9 = ".";
        r1.append(r9);
        r9 = r1.toString();
        r10.<init>(r9);
        throw r10;
    L_0x0046:
        r2 = zzf(r10);
        if (r2 == 0) goto L_0x007a;
    L_0x004c:
        r9 = new java.lang.IllegalArgumentException;
        r10 = r10.toString();
        r10 = java.lang.String.valueOf(r10);
        r0 = java.lang.String.valueOf(r10);
        r0 = r0.length();
        r0 = r0 + 50;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Illegal type given to abstractRelationalCompare: ";
        r1.append(r0);
        r1.append(r10);
        r10 = ".";
        r1.append(r10);
        r10 = r1.toString();
        r9.<init>(r10);
        throw r9;
    L_0x007a:
        r2 = r9 instanceof com.google.android.gms.internal.dz;
        if (r2 != 0) goto L_0x0086;
    L_0x007e:
        r2 = r9 instanceof com.google.android.gms.internal.dw;
        if (r2 != 0) goto L_0x0086;
    L_0x0082:
        r2 = r9 instanceof com.google.android.gms.internal.du;
        if (r2 == 0) goto L_0x0090;
    L_0x0086:
        r2 = new com.google.android.gms.internal.eb;
        r9 = zzd(r9);
        r2.<init>(r9);
        r9 = r2;
    L_0x0090:
        r2 = r10 instanceof com.google.android.gms.internal.dz;
        if (r2 != 0) goto L_0x009c;
    L_0x0094:
        r2 = r10 instanceof com.google.android.gms.internal.dw;
        if (r2 != 0) goto L_0x009c;
    L_0x0098:
        r2 = r10 instanceof com.google.android.gms.internal.du;
        if (r2 == 0) goto L_0x00a6;
    L_0x009c:
        r2 = new com.google.android.gms.internal.eb;
        r10 = zzd(r10);
        r2.<init>(r10);
        r10 = r2;
    L_0x00a6:
        r2 = r9 instanceof com.google.android.gms.internal.eb;
        if (r2 == 0) goto L_0x00c7;
    L_0x00aa:
        r2 = r10 instanceof com.google.android.gms.internal.eb;
        if (r2 != 0) goto L_0x00af;
    L_0x00ae:
        goto L_0x00c7;
    L_0x00af:
        r9 = (com.google.android.gms.internal.eb) r9;
        r9 = r9.value();
        r9 = (java.lang.String) r9;
        r10 = (com.google.android.gms.internal.eb) r10;
        r10 = r10.value();
        r10 = (java.lang.String) r10;
        r9 = r9.compareTo(r10);
        if (r9 >= 0) goto L_0x00c6;
    L_0x00c5:
        return r0;
    L_0x00c6:
        return r1;
    L_0x00c7:
        r2 = zzb(r9);
        r9 = zzb(r10);
        r4 = java.lang.Double.isNaN(r2);
        if (r4 != 0) goto L_0x0110;
    L_0x00d5:
        r4 = java.lang.Double.isNaN(r9);
        if (r4 == 0) goto L_0x00dc;
    L_0x00db:
        return r1;
    L_0x00dc:
        r4 = 0;
        r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        r7 = -9223372036854775808;
        if (r6 != 0) goto L_0x00e8;
    L_0x00e4:
        r6 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1));
        if (r6 == 0) goto L_0x00f0;
    L_0x00e8:
        r6 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1));
        if (r6 != 0) goto L_0x00f1;
    L_0x00ec:
        r6 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1));
        if (r6 != 0) goto L_0x00f1;
    L_0x00f0:
        return r1;
    L_0x00f1:
        r4 = 9218868437227405312; // 0x7ff0000000000000 float:0.0 double:Infinity;
        r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r6 != 0) goto L_0x00f8;
    L_0x00f7:
        return r1;
    L_0x00f8:
        r6 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1));
        if (r6 != 0) goto L_0x00fd;
    L_0x00fc:
        return r0;
    L_0x00fd:
        r4 = -4503599627370496; // 0xfff0000000000000 float:0.0 double:-Infinity;
        r6 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1));
        if (r6 != 0) goto L_0x0104;
    L_0x0103:
        return r1;
    L_0x0104:
        r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r6 != 0) goto L_0x0109;
    L_0x0108:
        return r0;
    L_0x0109:
        r9 = java.lang.Double.compare(r2, r9);
        if (r9 >= 0) goto L_0x0110;
    L_0x010f:
        return r0;
    L_0x0110:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcxp.zzb(com.google.android.gms.internal.dp, com.google.android.gms.internal.dp):boolean");
    }

    /* JADX WARNING: Missing block: B:12:0x002d, code skipped:
            return r0;
     */
    public static double zzc(com.google.android.gms.internal.dp<?> r4) {
        /*
        r0 = zzb(r4);
        r4 = java.lang.Double.isNaN(r0);
        r2 = 0;
        if (r4 == 0) goto L_0x000d;
    L_0x000c:
        return r2;
    L_0x000d:
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r4 == 0) goto L_0x002d;
    L_0x0011:
        r2 = -9223372036854775808;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r4 == 0) goto L_0x002d;
    L_0x0017:
        r4 = java.lang.Double.isInfinite(r0);
        if (r4 == 0) goto L_0x001e;
    L_0x001d:
        return r0;
    L_0x001e:
        r2 = java.lang.Math.signum(r0);
        r0 = java.lang.Math.abs(r0);
        r0 = java.lang.Math.floor(r0);
        r2 = r2 * r0;
        return r2;
    L_0x002d:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcxp.zzc(com.google.android.gms.internal.dp):double");
    }

    public static boolean zzc(com.google.android.gms.internal.dp<?> r5, com.google.android.gms.internal.dp<?> r6) {
        /*
    L_0x0000:
        r0 = 1;
        r1 = 0;
        if (r5 == 0) goto L_0x0006;
    L_0x0004:
        r2 = 1;
        goto L_0x0007;
    L_0x0006:
        r2 = 0;
    L_0x0007:
        com.google.android.gms.common.internal.zzbo.zzaf(r2);
        if (r6 == 0) goto L_0x000e;
    L_0x000c:
        r2 = 1;
        goto L_0x000f;
    L_0x000e:
        r2 = 0;
    L_0x000f:
        com.google.android.gms.common.internal.zzbo.zzaf(r2);
        r2 = zzf(r5);
        if (r2 == 0) goto L_0x0046;
    L_0x0018:
        r6 = new java.lang.IllegalArgumentException;
        r5 = r5.toString();
        r5 = java.lang.String.valueOf(r5);
        r0 = java.lang.String.valueOf(r5);
        r0 = r0.length();
        r0 = r0 + 48;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Illegal type given to abstractEqualityCompare: ";
        r1.append(r0);
        r1.append(r5);
        r5 = ".";
        r1.append(r5);
        r5 = r1.toString();
        r6.<init>(r5);
        throw r6;
    L_0x0046:
        r2 = zzf(r6);
        if (r2 == 0) goto L_0x007a;
    L_0x004c:
        r5 = new java.lang.IllegalArgumentException;
        r6 = r6.toString();
        r6 = java.lang.String.valueOf(r6);
        r0 = java.lang.String.valueOf(r6);
        r0 = r0.length();
        r0 = r0 + 48;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Illegal type given to abstractEqualityCompare: ";
        r1.append(r0);
        r1.append(r6);
        r6 = ".";
        r1.append(r6);
        r6 = r1.toString();
        r5.<init>(r6);
        throw r5;
    L_0x007a:
        r2 = zze(r5);
        r3 = zze(r6);
        r4 = r2.equals(r3);
        if (r4 == 0) goto L_0x012b;
    L_0x0088:
        r3 = -1;
        r4 = r2.hashCode();
        switch(r4) {
            case -1950496919: goto L_0x00c3;
            case -1939501217: goto L_0x00b9;
            case -1808118735: goto L_0x00af;
            case 2439591: goto L_0x00a5;
            case 965837104: goto L_0x009b;
            case 1729365000: goto L_0x0091;
            default: goto L_0x0090;
        };
    L_0x0090:
        goto L_0x00cd;
    L_0x0091:
        r4 = "Boolean";
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x00cd;
    L_0x0099:
        r2 = 4;
        goto L_0x00ce;
    L_0x009b:
        r4 = "Undefined";
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x00cd;
    L_0x00a3:
        r2 = 0;
        goto L_0x00ce;
    L_0x00a5:
        r4 = "Null";
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x00cd;
    L_0x00ad:
        r2 = 1;
        goto L_0x00ce;
    L_0x00af:
        r4 = "String";
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x00cd;
    L_0x00b7:
        r2 = 3;
        goto L_0x00ce;
    L_0x00b9:
        r4 = "Object";
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x00cd;
    L_0x00c1:
        r2 = 5;
        goto L_0x00ce;
    L_0x00c3:
        r4 = "Number";
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x00cd;
    L_0x00cb:
        r2 = 2;
        goto L_0x00ce;
    L_0x00cd:
        r2 = -1;
    L_0x00ce:
        switch(r2) {
            case 0: goto L_0x012a;
            case 1: goto L_0x012a;
            case 2: goto L_0x00ff;
            case 3: goto L_0x00ea;
            case 4: goto L_0x00d6;
            case 5: goto L_0x00d2;
            default: goto L_0x00d1;
        };
    L_0x00d1:
        return r1;
    L_0x00d2:
        if (r5 != r6) goto L_0x00d5;
    L_0x00d4:
        return r0;
    L_0x00d5:
        return r1;
    L_0x00d6:
        r5 = (com.google.android.gms.internal.ds) r5;
        r5 = r5.zzDn();
        r5 = (java.lang.Boolean) r5;
        r6 = (com.google.android.gms.internal.ds) r6;
        r6 = r6.zzDn();
        r6 = (java.lang.Boolean) r6;
        if (r5 != r6) goto L_0x00e9;
    L_0x00e8:
        return r0;
    L_0x00e9:
        return r1;
    L_0x00ea:
        r5 = (com.google.android.gms.internal.eb) r5;
        r5 = r5.value();
        r5 = (java.lang.String) r5;
        r6 = (com.google.android.gms.internal.eb) r6;
        r6 = r6.value();
        r6 = (java.lang.String) r6;
        r5 = r5.equals(r6);
        return r5;
    L_0x00ff:
        r5 = (com.google.android.gms.internal.dt) r5;
        r5 = r5.zzDo();
        r5 = (java.lang.Double) r5;
        r2 = r5.doubleValue();
        r6 = (com.google.android.gms.internal.dt) r6;
        r5 = r6.zzDo();
        r5 = (java.lang.Double) r5;
        r5 = r5.doubleValue();
        r4 = java.lang.Double.isNaN(r2);
        if (r4 != 0) goto L_0x0129;
    L_0x011d:
        r4 = java.lang.Double.isNaN(r5);
        if (r4 == 0) goto L_0x0124;
    L_0x0123:
        return r1;
    L_0x0124:
        r4 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1));
        if (r4 != 0) goto L_0x0129;
    L_0x0128:
        return r0;
    L_0x0129:
        return r1;
    L_0x012a:
        return r0;
    L_0x012b:
        r4 = com.google.android.gms.internal.dv.zzbLu;
        if (r5 == r4) goto L_0x0133;
    L_0x012f:
        r4 = com.google.android.gms.internal.dv.zzbLt;
        if (r5 != r4) goto L_0x013c;
    L_0x0133:
        r4 = com.google.android.gms.internal.dv.zzbLu;
        if (r6 == r4) goto L_0x01ed;
    L_0x0137:
        r4 = com.google.android.gms.internal.dv.zzbLt;
        if (r6 != r4) goto L_0x013c;
    L_0x013b:
        return r0;
    L_0x013c:
        r0 = "Number";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x015c;
    L_0x0144:
        r0 = "String";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x015c;
    L_0x014c:
        r0 = new com.google.android.gms.internal.dt;
        r1 = zzb(r6);
        r6 = java.lang.Double.valueOf(r1);
        r0.<init>(r6);
    L_0x0159:
        r6 = r0;
        goto L_0x0000;
    L_0x015c:
        r0 = "String";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x017c;
    L_0x0164:
        r0 = "Number";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x017c;
    L_0x016c:
        r0 = new com.google.android.gms.internal.dt;
        r1 = zzb(r5);
        r5 = java.lang.Double.valueOf(r1);
        r0.<init>(r5);
    L_0x0179:
        r5 = r0;
        goto L_0x0000;
    L_0x017c:
        r0 = "Boolean";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0192;
    L_0x0184:
        r0 = new com.google.android.gms.internal.dt;
        r1 = zzb(r5);
        r5 = java.lang.Double.valueOf(r1);
        r0.<init>(r5);
        goto L_0x0179;
    L_0x0192:
        r0 = "Boolean";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x01a8;
    L_0x019a:
        r0 = new com.google.android.gms.internal.dt;
        r1 = zzb(r6);
        r6 = java.lang.Double.valueOf(r1);
        r0.<init>(r6);
        goto L_0x0159;
    L_0x01a8:
        r0 = "String";
        r0 = r2.equals(r0);
        if (r0 != 0) goto L_0x01b8;
    L_0x01b0:
        r0 = "Number";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x01ca;
    L_0x01b8:
        r0 = "Object";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x01ca;
    L_0x01c0:
        r0 = new com.google.android.gms.internal.eb;
        r6 = zzd(r6);
        r0.<init>(r6);
        goto L_0x0159;
    L_0x01ca:
        r0 = "Object";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x01ec;
    L_0x01d2:
        r0 = "String";
        r0 = r3.equals(r0);
        if (r0 != 0) goto L_0x01e2;
    L_0x01da:
        r0 = "Number";
        r0 = r3.equals(r0);
        if (r0 == 0) goto L_0x01ec;
    L_0x01e2:
        r0 = new com.google.android.gms.internal.eb;
        r5 = zzd(r5);
        r0.<init>(r5);
        goto L_0x0179;
    L_0x01ec:
        return r1;
    L_0x01ed:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcxp.zzc(com.google.android.gms.internal.dp, com.google.android.gms.internal.dp):boolean");
    }

    public static String zzd(dp<?> dpVar) {
        zzbo.zzaf(dpVar != null);
        if (dpVar == dv.zzbLu) {
            return "undefined";
        }
        if (dpVar == dv.zzbLt) {
            return "null";
        }
        if (dpVar instanceof ds) {
            return ((Boolean) ((ds) dpVar).zzDn()).booleanValue() ? "true" : "false";
        } else {
            String d;
            StringBuilder stringBuilder;
            if (dpVar instanceof dt) {
                d = Double.toString(((dt) dpVar).zzDo().doubleValue());
                int indexOf = d.indexOf("E");
                if (indexOf > 0) {
                    CharSequence charSequence;
                    CharSequence charSequence2;
                    int parseInt = Integer.parseInt(d.substring(indexOf + 1, d.length()));
                    if (parseInt < 0) {
                        if (parseInt > -7) {
                            d = d.substring(0, indexOf).replace(".", "");
                            stringBuilder = new StringBuilder();
                            String str = "0.";
                            while (true) {
                                stringBuilder.append(str);
                                parseInt++;
                                if (parseInt < 0) {
                                    str = "0";
                                } else {
                                    stringBuilder.append(d);
                                    return stringBuilder.toString();
                                }
                            }
                        }
                        charSequence = "E";
                        charSequence2 = "e";
                    } else if (parseInt < 21) {
                        d = d.substring(0, indexOf).replace(".", "");
                        parseInt = (parseInt + 1) - (d.length() - d.startsWith("-"));
                        StringBuilder stringBuilder2 = new StringBuilder();
                        if (parseInt < 0) {
                            indexOf = d.length() + parseInt;
                            stringBuilder2.append(d.substring(0, indexOf));
                            stringBuilder2.append(".");
                            stringBuilder2.append(d.substring(indexOf, d.length()));
                        } else {
                            stringBuilder2.append(d);
                            while (parseInt > 0) {
                                stringBuilder2.append("0");
                                parseInt--;
                            }
                        }
                        return stringBuilder2.toString();
                    } else {
                        charSequence = "E";
                        charSequence2 = "e+";
                    }
                    return d.replace(charSequence, charSequence2);
                }
                if (d.endsWith(".0")) {
                    d = d.substring(0, d.length() - 2);
                    if (d.equals("-0")) {
                        d = "0";
                    }
                }
                return d;
            }
            if (dpVar instanceof du) {
                zzcxo zzDp = ((du) dpVar).zzDp();
                if (zzDp instanceof zzcxn) {
                    return ((zzcxn) zzDp).getName();
                }
            } else if (dpVar instanceof dw) {
                ArrayList arrayList = new ArrayList();
                for (dp dpVar2 : ((dw) dpVar).zzDs()) {
                    Object zzd = (dpVar2 == dv.zzbLt || dpVar2 == dv.zzbLu) ? "" : zzd(dpVar2);
                    arrayList.add(zzd);
                }
                return TextUtils.join(",", arrayList);
            } else if (dpVar instanceof dz) {
                return "[object Object]";
            } else {
                if (dpVar instanceof eb) {
                    return ((eb) dpVar).value();
                }
            }
            if (zzf(dpVar)) {
                d = String.valueOf(dpVar.toString());
                stringBuilder = new StringBuilder(String.valueOf(d).length() + 41);
                stringBuilder.append("Illegal type given to stringEquivalent: ");
                stringBuilder.append(d);
                stringBuilder.append(".");
                d = stringBuilder.toString();
            } else {
                d = "Unknown type in stringEquivalent.";
            }
            throw new IllegalArgumentException(d);
        }
    }

    public static boolean zzd(com.google.android.gms.internal.dp<?> r5, com.google.android.gms.internal.dp<?> r6) {
        /*
        r0 = 1;
        r1 = 0;
        if (r5 == 0) goto L_0x0006;
    L_0x0004:
        r2 = 1;
        goto L_0x0007;
    L_0x0006:
        r2 = 0;
    L_0x0007:
        com.google.android.gms.common.internal.zzbo.zzaf(r2);
        if (r6 == 0) goto L_0x000e;
    L_0x000c:
        r2 = 1;
        goto L_0x000f;
    L_0x000e:
        r2 = 0;
    L_0x000f:
        com.google.android.gms.common.internal.zzbo.zzaf(r2);
        r2 = zzf(r5);
        if (r2 == 0) goto L_0x0046;
    L_0x0018:
        r6 = new java.lang.IllegalArgumentException;
        r5 = r5.toString();
        r5 = java.lang.String.valueOf(r5);
        r0 = java.lang.String.valueOf(r5);
        r0 = r0.length();
        r0 = r0 + 46;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Illegal type given to strictEqualityCompare: ";
        r1.append(r0);
        r1.append(r5);
        r5 = ".";
        r1.append(r5);
        r5 = r1.toString();
        r6.<init>(r5);
        throw r6;
    L_0x0046:
        r2 = zzf(r6);
        if (r2 == 0) goto L_0x007a;
    L_0x004c:
        r5 = new java.lang.IllegalArgumentException;
        r6 = r6.toString();
        r6 = java.lang.String.valueOf(r6);
        r0 = java.lang.String.valueOf(r6);
        r0 = r0.length();
        r0 = r0 + 46;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Illegal type given to strictEqualityCompare: ";
        r1.append(r0);
        r1.append(r6);
        r6 = ".";
        r1.append(r6);
        r6 = r1.toString();
        r5.<init>(r6);
        throw r5;
    L_0x007a:
        r2 = zze(r5);
        r3 = zze(r6);
        r3 = r2.equals(r3);
        if (r3 != 0) goto L_0x0089;
    L_0x0088:
        return r1;
    L_0x0089:
        r3 = -1;
        r4 = r2.hashCode();
        switch(r4) {
            case -1950496919: goto L_0x00ba;
            case -1808118735: goto L_0x00b0;
            case 2439591: goto L_0x00a6;
            case 965837104: goto L_0x009c;
            case 1729365000: goto L_0x0092;
            default: goto L_0x0091;
        };
    L_0x0091:
        goto L_0x00c4;
    L_0x0092:
        r4 = "Boolean";
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x00c4;
    L_0x009a:
        r2 = 4;
        goto L_0x00c5;
    L_0x009c:
        r4 = "Undefined";
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x00c4;
    L_0x00a4:
        r2 = 0;
        goto L_0x00c5;
    L_0x00a6:
        r4 = "Null";
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x00c4;
    L_0x00ae:
        r2 = 1;
        goto L_0x00c5;
    L_0x00b0:
        r4 = "String";
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x00c4;
    L_0x00b8:
        r2 = 3;
        goto L_0x00c5;
    L_0x00ba:
        r4 = "Number";
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x00c4;
    L_0x00c2:
        r2 = 2;
        goto L_0x00c5;
    L_0x00c4:
        r2 = -1;
    L_0x00c5:
        switch(r2) {
            case 0: goto L_0x0122;
            case 1: goto L_0x0122;
            case 2: goto L_0x00f7;
            case 3: goto L_0x00df;
            case 4: goto L_0x00cb;
            default: goto L_0x00c8;
        };
    L_0x00c8:
        if (r5 != r6) goto L_0x0123;
    L_0x00ca:
        return r0;
    L_0x00cb:
        r5 = (com.google.android.gms.internal.ds) r5;
        r5 = r5.zzDn();
        r5 = (java.lang.Boolean) r5;
        r6 = (com.google.android.gms.internal.ds) r6;
        r6 = r6.zzDn();
        r6 = (java.lang.Boolean) r6;
        if (r5 != r6) goto L_0x00de;
    L_0x00dd:
        return r0;
    L_0x00de:
        return r1;
    L_0x00df:
        r5 = (com.google.android.gms.internal.eb) r5;
        r5 = r5.value();
        r5 = (java.lang.String) r5;
        r6 = (com.google.android.gms.internal.eb) r6;
        r6 = r6.value();
        r6 = (java.lang.String) r6;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x00f6;
    L_0x00f5:
        return r0;
    L_0x00f6:
        return r1;
    L_0x00f7:
        r5 = (com.google.android.gms.internal.dt) r5;
        r5 = r5.zzDo();
        r5 = (java.lang.Double) r5;
        r2 = r5.doubleValue();
        r6 = (com.google.android.gms.internal.dt) r6;
        r5 = r6.zzDo();
        r5 = (java.lang.Double) r5;
        r5 = r5.doubleValue();
        r4 = java.lang.Double.isNaN(r2);
        if (r4 != 0) goto L_0x0121;
    L_0x0115:
        r4 = java.lang.Double.isNaN(r5);
        if (r4 == 0) goto L_0x011c;
    L_0x011b:
        return r1;
    L_0x011c:
        r4 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1));
        if (r4 != 0) goto L_0x0121;
    L_0x0120:
        return r0;
    L_0x0121:
        return r1;
    L_0x0122:
        return r0;
    L_0x0123:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcxp.zzd(com.google.android.gms.internal.dp, com.google.android.gms.internal.dp):boolean");
    }

    private static String zze(dp<?> dpVar) {
        return dpVar == dv.zzbLu ? "Undefined" : dpVar == dv.zzbLt ? "Null" : dpVar instanceof ds ? "Boolean" : dpVar instanceof dt ? "Number" : dpVar instanceof eb ? "String" : "Object";
    }

    private static boolean zzf(dp<?> dpVar) {
        return (dpVar instanceof ea) || !(!(dpVar instanceof dv) || dpVar == dv.zzbLu || dpVar == dv.zzbLt);
    }
}
