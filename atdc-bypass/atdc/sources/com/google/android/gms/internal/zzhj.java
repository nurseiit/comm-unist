package com.google.android.gms.internal;

@zzzn
public final class zzhj {
    /* JADX WARNING: Missing block: B:11:0x005d, code skipped:
            r2 = r2 | ((r0[r1 + 1] & 255) << 8);
     */
    /* JADX WARNING: Missing block: B:12:0x0066, code skipped:
            r0 = ((r0[r1] & 255) | r2) * -862048943;
            r4 = r4 ^ (((r0 >>> 17) | (r0 << 15)) * 461845907);
     */
    /* JADX WARNING: Missing block: B:13:0x0075, code skipped:
            r9 = r9 ^ r4;
            r9 = (r9 ^ (r9 >>> 16)) * -2048144789;
            r9 = (r9 ^ (r9 >>> 13)) * -1028477387;
     */
    /* JADX WARNING: Missing block: B:14:0x0089, code skipped:
            return r9 ^ (r9 >>> 16);
     */
    public static int zzA(java.lang.String r9) {
        /*
        r0 = "UTF-8";
        r0 = r9.getBytes(r0);	 Catch:{ UnsupportedEncodingException -> 0x0007 }
        goto L_0x000b;
    L_0x0007:
        r0 = r9.getBytes();
    L_0x000b:
        r9 = r0.length;
        r1 = r9 & -4;
        r2 = 0;
        r1 = r1 + r2;
        r3 = 0;
        r4 = 0;
    L_0x0012:
        r5 = 461845907; // 0x1b873593 float:2.2368498E-22 double:2.281821963E-315;
        r6 = -862048943; // 0xffffffffcc9e2d51 float:-8.2930312E7 double:NaN;
        if (r3 >= r1) goto L_0x004f;
    L_0x001a:
        r7 = r0[r3];
        r7 = r7 & 255;
        r8 = r3 + 1;
        r8 = r0[r8];
        r8 = r8 & 255;
        r8 = r8 << 8;
        r7 = r7 | r8;
        r8 = r3 + 2;
        r8 = r0[r8];
        r8 = r8 & 255;
        r8 = r8 << 16;
        r7 = r7 | r8;
        r8 = r3 + 3;
        r8 = r0[r8];
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
        goto L_0x0012;
    L_0x004f:
        r3 = r9 & 3;
        switch(r3) {
            case 1: goto L_0x0066;
            case 2: goto L_0x005d;
            case 3: goto L_0x0055;
            default: goto L_0x0054;
        };
    L_0x0054:
        goto L_0x0075;
    L_0x0055:
        r2 = r1 + 2;
        r2 = r0[r2];
        r2 = r2 & 255;
        r2 = r2 << 16;
    L_0x005d:
        r3 = r1 + 1;
        r3 = r0[r3];
        r3 = r3 & 255;
        r3 = r3 << 8;
        r2 = r2 | r3;
    L_0x0066:
        r0 = r0[r1];
        r0 = r0 & 255;
        r0 = r0 | r2;
        r0 = r0 * r6;
        r1 = r0 << 15;
        r0 = r0 >>> 17;
        r0 = r0 | r1;
        r0 = r0 * r5;
        r4 = r4 ^ r0;
    L_0x0075:
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
        return r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzhj.zzA(java.lang.String):int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x009c  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0086  */
    /* JADX WARNING: Missing block: B:48:0x007f, code skipped:
            if (r8 != null) goto L_0x0081;
     */
    /* JADX WARNING: Missing block: B:67:0x00c4, code skipped:
            if (r4 == null) goto L_0x00d3;
     */
    /* JADX WARNING: Missing block: B:70:0x00d1, code skipped:
            if (r4 == null) goto L_0x00d3;
     */
    @android.support.annotation.Nullable
    public static java.lang.String[] zzd(@android.support.annotation.Nullable java.lang.String r11, boolean r12) {
        /*
        if (r11 != 0) goto L_0x0004;
    L_0x0002:
        r11 = 0;
        return r11;
    L_0x0004:
        r0 = new java.util.ArrayList;
        r0.<init>();
        r1 = r11.toCharArray();
        r11 = r11.length();
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = 0;
    L_0x0015:
        if (r3 >= r11) goto L_0x00d8;
    L_0x0017:
        r6 = java.lang.Character.codePointAt(r1, r3);
        r7 = java.lang.Character.charCount(r6);
        r8 = java.lang.Character.isLetter(r6);
        r9 = 1;
        if (r8 == 0) goto L_0x0083;
    L_0x0026:
        r8 = java.lang.Character.UnicodeBlock.of(r6);
        r10 = java.lang.Character.UnicodeBlock.BOPOMOFO;
        if (r8 == r10) goto L_0x0065;
    L_0x002e:
        r10 = java.lang.Character.UnicodeBlock.BOPOMOFO_EXTENDED;
        if (r8 == r10) goto L_0x0065;
    L_0x0032:
        r10 = java.lang.Character.UnicodeBlock.CJK_COMPATIBILITY;
        if (r8 == r10) goto L_0x0065;
    L_0x0036:
        r10 = java.lang.Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS;
        if (r8 == r10) goto L_0x0065;
    L_0x003a:
        r10 = java.lang.Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT;
        if (r8 == r10) goto L_0x0065;
    L_0x003e:
        r10 = java.lang.Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS;
        if (r8 == r10) goto L_0x0065;
    L_0x0042:
        r10 = java.lang.Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A;
        if (r8 == r10) goto L_0x0065;
    L_0x0046:
        r10 = java.lang.Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B;
        if (r8 == r10) goto L_0x0065;
    L_0x004a:
        r10 = java.lang.Character.UnicodeBlock.ENCLOSED_CJK_LETTERS_AND_MONTHS;
        if (r8 == r10) goto L_0x0065;
    L_0x004e:
        r10 = java.lang.Character.UnicodeBlock.HANGUL_JAMO;
        if (r8 == r10) goto L_0x0065;
    L_0x0052:
        r10 = java.lang.Character.UnicodeBlock.HANGUL_SYLLABLES;
        if (r8 == r10) goto L_0x0065;
    L_0x0056:
        r10 = java.lang.Character.UnicodeBlock.HIRAGANA;
        if (r8 == r10) goto L_0x0065;
    L_0x005a:
        r10 = java.lang.Character.UnicodeBlock.KATAKANA;
        if (r8 == r10) goto L_0x0065;
    L_0x005e:
        r10 = java.lang.Character.UnicodeBlock.KATAKANA_PHONETIC_EXTENSIONS;
        if (r8 != r10) goto L_0x0063;
    L_0x0062:
        goto L_0x0065;
    L_0x0063:
        r8 = 0;
        goto L_0x0066;
    L_0x0065:
        r8 = 1;
    L_0x0066:
        if (r8 != 0) goto L_0x0081;
    L_0x0068:
        r8 = 65382; // 0xff66 float:9.162E-41 double:3.2303E-319;
        if (r6 < r8) goto L_0x0072;
    L_0x006d:
        r8 = 65437; // 0xff9d float:9.1697E-41 double:3.233E-319;
        if (r6 <= r8) goto L_0x007c;
    L_0x0072:
        r8 = 65441; // 0xffa1 float:9.1702E-41 double:3.2332E-319;
        if (r6 < r8) goto L_0x007e;
    L_0x0077:
        r8 = 65500; // 0xffdc float:9.1785E-41 double:3.23613E-319;
        if (r6 > r8) goto L_0x007e;
    L_0x007c:
        r8 = 1;
        goto L_0x007f;
    L_0x007e:
        r8 = 0;
    L_0x007f:
        if (r8 == 0) goto L_0x0083;
    L_0x0081:
        r8 = 1;
        goto L_0x0084;
    L_0x0083:
        r8 = 0;
    L_0x0084:
        if (r8 == 0) goto L_0x009c;
    L_0x0086:
        if (r4 == 0) goto L_0x0092;
    L_0x0088:
        r4 = new java.lang.String;
        r6 = r3 - r5;
        r4.<init>(r1, r5, r6);
        r0.add(r4);
    L_0x0092:
        r4 = new java.lang.String;
        r4.<init>(r1, r3, r7);
    L_0x0097:
        r0.add(r4);
        r4 = 0;
        goto L_0x00d5;
    L_0x009c:
        r8 = java.lang.Character.isLetterOrDigit(r6);
        if (r8 != 0) goto L_0x00d1;
    L_0x00a2:
        r8 = java.lang.Character.getType(r6);
        r10 = 6;
        if (r8 == r10) goto L_0x00d1;
    L_0x00a9:
        r8 = java.lang.Character.getType(r6);
        r10 = 8;
        if (r8 != r10) goto L_0x00b2;
    L_0x00b1:
        goto L_0x00d1;
    L_0x00b2:
        if (r12 == 0) goto L_0x00c7;
    L_0x00b4:
        r8 = java.lang.Character.charCount(r6);
        if (r8 != r9) goto L_0x00c7;
    L_0x00ba:
        r6 = java.lang.Character.toChars(r6);
        r6 = r6[r2];
        r8 = 39;
        if (r6 != r8) goto L_0x00c7;
    L_0x00c4:
        if (r4 != 0) goto L_0x00d4;
    L_0x00c6:
        goto L_0x00d3;
    L_0x00c7:
        if (r4 == 0) goto L_0x00d5;
    L_0x00c9:
        r4 = new java.lang.String;
        r6 = r3 - r5;
        r4.<init>(r1, r5, r6);
        goto L_0x0097;
    L_0x00d1:
        if (r4 != 0) goto L_0x00d4;
    L_0x00d3:
        r5 = r3;
    L_0x00d4:
        r4 = 1;
    L_0x00d5:
        r3 = r3 + r7;
        goto L_0x0015;
    L_0x00d8:
        if (r4 == 0) goto L_0x00e3;
    L_0x00da:
        r11 = new java.lang.String;
        r3 = r3 - r5;
        r11.<init>(r1, r5, r3);
        r0.add(r11);
    L_0x00e3:
        r11 = r0.size();
        r11 = new java.lang.String[r11];
        r11 = r0.toArray(r11);
        r11 = (java.lang.String[]) r11;
        return r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzhj.zzd(java.lang.String, boolean):java.lang.String[]");
    }
}
