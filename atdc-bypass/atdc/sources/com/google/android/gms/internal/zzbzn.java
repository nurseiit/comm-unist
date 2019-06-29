package com.google.android.gms.internal;

public final class zzbzn {
    private static final ThreadLocal<String> zzaWi = new ThreadLocal();

    /* JADX WARNING: Missing block: B:19:0x009d, code skipped:
            r1 = r1 | ((r2[r0 + 1] & 255) << 8);
     */
    /* JADX WARNING: Missing block: B:20:0x00a6, code skipped:
            r0 = ((r2[r0] & 255) | r1) * -862048943;
            r4 = r4 ^ (((r0 >>> 17) | (r0 << 15)) * 461845907);
     */
    /* JADX WARNING: Missing block: B:21:0x00b5, code skipped:
            r9 = r9 ^ r4;
            r9 = (r9 ^ (r9 >>> 16)) * -2048144789;
            r9 = (r9 ^ (r9 >>> 13)) * -1028477387;
            r9 = java.lang.Integer.toHexString(r9 ^ (r9 >>> 16));
     */
    public static java.lang.String zzdh(java.lang.String r9) {
        /*
        r0 = zzaWi;
        r0 = r0.get();
        r0 = (java.lang.String) r0;
        r1 = 0;
        if (r0 == 0) goto L_0x0016;
    L_0x000b:
        r2 = "com.google";
        r0 = r0.startsWith(r2);
        if (r0 == 0) goto L_0x0014;
    L_0x0013:
        goto L_0x0016;
    L_0x0014:
        r0 = 0;
        goto L_0x0017;
    L_0x0016:
        r0 = 1;
    L_0x0017:
        if (r0 == 0) goto L_0x001a;
    L_0x0019:
        return r9;
    L_0x001a:
        r0 = zzaWi;
        r0 = r0.get();
        r0 = (java.lang.String) r0;
        if (r9 == 0) goto L_0x00cd;
    L_0x0024:
        if (r0 != 0) goto L_0x0027;
    L_0x0026:
        return r9;
    L_0x0027:
        r2 = r9.length();
        r3 = r0.length();
        r2 = r2 + r3;
        r2 = new byte[r2];
        r3 = r9.getBytes();
        r4 = r9.length();
        java.lang.System.arraycopy(r3, r1, r2, r1, r4);
        r3 = r0.getBytes();
        r9 = r9.length();
        r0 = r0.length();
        java.lang.System.arraycopy(r3, r1, r2, r9, r0);
        r9 = r2.length;
        r0 = r9 & -4;
        r0 = r0 + r1;
        r3 = 0;
        r4 = 0;
    L_0x0052:
        r5 = 461845907; // 0x1b873593 float:2.2368498E-22 double:2.281821963E-315;
        r6 = -862048943; // 0xffffffffcc9e2d51 float:-8.2930312E7 double:NaN;
        if (r3 >= r0) goto L_0x008f;
    L_0x005a:
        r7 = r2[r3];
        r7 = r7 & 255;
        r8 = r3 + 1;
        r8 = r2[r8];
        r8 = r8 & 255;
        r8 = r8 << 8;
        r7 = r7 | r8;
        r8 = r3 + 2;
        r8 = r2[r8];
        r8 = r8 & 255;
        r8 = r8 << 16;
        r7 = r7 | r8;
        r8 = r3 + 3;
        r8 = r2[r8];
        r8 = r8 << 24;
        r7 = r7 | r8;
        r7 = r7 * r6;
        r6 = r7 << 15;
        r7 = r7 >>> 17;
        r6 = r6 | r7;
        r6 = r6 * r5;
        r4 = r4 ^ r6;
        r5 = r4 << 13;
        r4 = r4 >>> 19;
        r4 = r4 | r5;
        r4 = r4 * 5;
        r5 = -430675100; // 0xffffffffe6546b64 float:-2.5078068E23 double:NaN;
        r4 = r4 + r5;
        r3 = r3 + 4;
        goto L_0x0052;
    L_0x008f:
        r3 = r9 & 3;
        switch(r3) {
            case 1: goto L_0x00a6;
            case 2: goto L_0x009d;
            case 3: goto L_0x0095;
            default: goto L_0x0094;
        };
    L_0x0094:
        goto L_0x00b5;
    L_0x0095:
        r1 = r0 + 2;
        r1 = r2[r1];
        r1 = r1 & 255;
        r1 = r1 << 16;
    L_0x009d:
        r3 = r0 + 1;
        r3 = r2[r3];
        r3 = r3 & 255;
        r3 = r3 << 8;
        r1 = r1 | r3;
    L_0x00a6:
        r0 = r2[r0];
        r0 = r0 & 255;
        r0 = r0 | r1;
        r0 = r0 * r6;
        r1 = r0 << 15;
        r0 = r0 >>> 17;
        r0 = r0 | r1;
        r0 = r0 * r5;
        r4 = r4 ^ r0;
    L_0x00b5:
        r9 = r9 ^ r4;
        r0 = r9 >>> 16;
        r9 = r9 ^ r0;
        r0 = -2048144789; // 0xffffffff85ebca6b float:-2.217365E-35 double:NaN;
        r9 = r9 * r0;
        r0 = r9 >>> 13;
        r9 = r9 ^ r0;
        r0 = -1028477387; // 0xffffffffc2b2ae35 float:-89.34025 double:NaN;
        r9 = r9 * r0;
        r0 = r9 >>> 16;
        r9 = r9 ^ r0;
        r9 = java.lang.Integer.toHexString(r9);
    L_0x00cd:
        return r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbzn.zzdh(java.lang.String):java.lang.String");
    }
}
