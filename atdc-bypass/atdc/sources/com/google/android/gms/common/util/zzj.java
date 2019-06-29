package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;

public final class zzj {
    private static Boolean zzaJJ;
    private static Boolean zzaJK;
    private static Boolean zzaJL;
    private static Boolean zzaJM;
    private static Boolean zzaJN;

    /* JADX WARNING: Missing block: B:20:0x003c, code skipped:
            if (zzaJK.booleanValue() != false) goto L_0x003e;
     */
    public static boolean zza(android.content.res.Resources r4) {
        /*
        r0 = 0;
        if (r4 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = zzaJJ;
        if (r1 != 0) goto L_0x0045;
    L_0x0008:
        r1 = r4.getConfiguration();
        r1 = r1.screenLayout;
        r1 = r1 & 15;
        r2 = 3;
        r3 = 1;
        if (r1 <= r2) goto L_0x0016;
    L_0x0014:
        r1 = 1;
        goto L_0x0017;
    L_0x0016:
        r1 = 0;
    L_0x0017:
        if (r1 != 0) goto L_0x003e;
    L_0x0019:
        r1 = zzaJK;
        if (r1 != 0) goto L_0x0036;
    L_0x001d:
        r4 = r4.getConfiguration();
        r1 = r4.screenLayout;
        r1 = r1 & 15;
        if (r1 > r2) goto L_0x002f;
    L_0x0027:
        r4 = r4.smallestScreenWidthDp;
        r1 = 600; // 0x258 float:8.41E-43 double:2.964E-321;
        if (r4 < r1) goto L_0x002f;
    L_0x002d:
        r4 = 1;
        goto L_0x0030;
    L_0x002f:
        r4 = 0;
    L_0x0030:
        r4 = java.lang.Boolean.valueOf(r4);
        zzaJK = r4;
    L_0x0036:
        r4 = zzaJK;
        r4 = r4.booleanValue();
        if (r4 == 0) goto L_0x003f;
    L_0x003e:
        r0 = 1;
    L_0x003f:
        r4 = java.lang.Boolean.valueOf(r0);
        zzaJJ = r4;
    L_0x0045:
        r4 = zzaJJ;
        r4 = r4.booleanValue();
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.zzj.zza(android.content.res.Resources):boolean");
    }

    @TargetApi(20)
    public static boolean zzaG(Context context) {
        if (zzaJL == null) {
            boolean z = zzq.zzsd() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
            zzaJL = Boolean.valueOf(z);
        }
        return zzaJL.booleanValue();
    }

    @TargetApi(24)
    public static boolean zzaH(Context context) {
        return (!zzq.isAtLeastN() || zzaI(context)) && zzaG(context);
    }

    @TargetApi(21)
    public static boolean zzaI(Context context) {
        if (zzaJM == null) {
            boolean z = zzq.zzse() && context.getPackageManager().hasSystemFeature("cn.google");
            zzaJM = Boolean.valueOf(z);
        }
        return zzaJM.booleanValue();
    }

    public static boolean zzaJ(Context context) {
        if (zzaJN == null) {
            boolean z = context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded");
            zzaJN = Boolean.valueOf(z);
        }
        return zzaJN.booleanValue();
    }
}
