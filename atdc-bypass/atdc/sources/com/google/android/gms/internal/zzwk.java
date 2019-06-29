package com.google.android.gms.internal;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.util.zzf;
import java.util.Set;

@zzzn
public final class zzwk extends zzwu {
    private static Set<String> zzNy = zzf.zzb("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    private final Object mLock = new Object();
    private final zzaka zzJH;
    private boolean zzNA = true;
    private int zzNB = 0;
    private int zzNC = 0;
    private int zzND = 0;
    private int zzNE = 0;
    private ImageView zzNF;
    private LinearLayout zzNG;
    private zzwv zzNH;
    private PopupWindow zzNI;
    private RelativeLayout zzNJ;
    private ViewGroup zzNK;
    private final Activity zzNo;
    private String zzNz = "top-right";
    private int zzrW = -1;
    private int zzrX = -1;
    private zziv zzuZ;

    public zzwk(zzaka zzaka, zzwv zzwv) {
        super(zzaka, "resize");
        this.zzJH = zzaka;
        this.zzNo = zzaka.zzis();
        this.zzNH = zzwv;
    }

    private final void zza(int i, int i2) {
        zzb(i, i2 - zzbs.zzbz().zzh(this.zzNo)[0], this.zzrW, this.zzrX);
    }

    /* JADX WARNING: Removed duplicated region for block: B:61:0x0107  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0105  */
    /* JADX WARNING: Missing block: B:38:0x0095, code skipped:
            r5 = r9.zzNC + r9.zzNE;
     */
    /* JADX WARNING: Missing block: B:42:0x00b6, code skipped:
            r5 = ((r9.zzNC + r9.zzNE) + r9.zzrX) - 50;
     */
    /* JADX WARNING: Missing block: B:46:0x00e9, code skipped:
            if (r0 < 0) goto L_0x0102;
     */
    /* JADX WARNING: Missing block: B:48:0x00ec, code skipped:
            if ((r0 + 50) > r3) goto L_0x0102;
     */
    /* JADX WARNING: Missing block: B:50:0x00f0, code skipped:
            if (r5 < r1[0]) goto L_0x0102;
     */
    /* JADX WARNING: Missing block: B:52:0x00f5, code skipped:
            if ((r5 + 50) <= r1[1]) goto L_0x00f8;
     */
    private final int[] zzfB() {
        /*
        r9 = this;
        r0 = com.google.android.gms.ads.internal.zzbs.zzbz();
        r1 = r9.zzNo;
        r0 = r0.zzg(r1);
        r1 = com.google.android.gms.ads.internal.zzbs.zzbz();
        r2 = r9.zzNo;
        r1 = r1.zzh(r2);
        r2 = 0;
        r3 = r0[r2];
        r4 = 1;
        r0 = r0[r4];
        r5 = r9.zzrW;
        r6 = 2;
        r7 = 50;
        if (r5 < r7) goto L_0x00fd;
    L_0x0021:
        r5 = r9.zzrW;
        if (r5 <= r3) goto L_0x0027;
    L_0x0025:
        goto L_0x00fd;
    L_0x0027:
        r5 = r9.zzrX;
        if (r5 < r7) goto L_0x00fa;
    L_0x002b:
        r5 = r9.zzrX;
        if (r5 <= r0) goto L_0x0031;
    L_0x002f:
        goto L_0x00fa;
    L_0x0031:
        r5 = r9.zzrX;
        if (r5 != r0) goto L_0x003d;
    L_0x0035:
        r0 = r9.zzrW;
        if (r0 != r3) goto L_0x003d;
    L_0x0039:
        r0 = "Cannot resize to a full-screen ad.";
        goto L_0x00ff;
    L_0x003d:
        r0 = r9.zzNA;
        if (r0 == 0) goto L_0x00f8;
    L_0x0041:
        r0 = r9.zzNz;
        r5 = -1;
        r8 = r0.hashCode();
        switch(r8) {
            case -1364013995: goto L_0x007e;
            case -1012429441: goto L_0x0074;
            case -655373719: goto L_0x006a;
            case 1163912186: goto L_0x0060;
            case 1288627767: goto L_0x0056;
            case 1755462605: goto L_0x004c;
            default: goto L_0x004b;
        };
    L_0x004b:
        goto L_0x0088;
    L_0x004c:
        r8 = "top-center";
        r0 = r0.equals(r8);
        if (r0 == 0) goto L_0x0088;
    L_0x0054:
        r0 = 1;
        goto L_0x0089;
    L_0x0056:
        r8 = "bottom-center";
        r0 = r0.equals(r8);
        if (r0 == 0) goto L_0x0088;
    L_0x005e:
        r0 = 4;
        goto L_0x0089;
    L_0x0060:
        r8 = "bottom-right";
        r0 = r0.equals(r8);
        if (r0 == 0) goto L_0x0088;
    L_0x0068:
        r0 = 5;
        goto L_0x0089;
    L_0x006a:
        r8 = "bottom-left";
        r0 = r0.equals(r8);
        if (r0 == 0) goto L_0x0088;
    L_0x0072:
        r0 = 3;
        goto L_0x0089;
    L_0x0074:
        r8 = "top-left";
        r0 = r0.equals(r8);
        if (r0 == 0) goto L_0x0088;
    L_0x007c:
        r0 = 0;
        goto L_0x0089;
    L_0x007e:
        r8 = "center";
        r0 = r0.equals(r8);
        if (r0 == 0) goto L_0x0088;
    L_0x0086:
        r0 = 2;
        goto L_0x0089;
    L_0x0088:
        r0 = -1;
    L_0x0089:
        switch(r0) {
            case 0: goto L_0x00e3;
            case 1: goto L_0x00d7;
            case 2: goto L_0x00c0;
            case 3: goto L_0x00b1;
            case 4: goto L_0x00a5;
            case 5: goto L_0x009b;
            default: goto L_0x008c;
        };
    L_0x008c:
        r0 = r9.zzNB;
        r5 = r9.zzND;
        r0 = r0 + r5;
        r5 = r9.zzrW;
        r0 = r0 + r5;
        r0 = r0 - r7;
    L_0x0095:
        r5 = r9.zzNC;
        r8 = r9.zzNE;
        r5 = r5 + r8;
        goto L_0x00e9;
    L_0x009b:
        r0 = r9.zzNB;
        r5 = r9.zzND;
        r0 = r0 + r5;
        r5 = r9.zzrW;
        r0 = r0 + r5;
        r0 = r0 - r7;
        goto L_0x00b6;
    L_0x00a5:
        r0 = r9.zzNB;
        r5 = r9.zzND;
        r0 = r0 + r5;
        r5 = r9.zzrW;
        r5 = r5 / r6;
        r0 = r0 + r5;
        r0 = r0 + -25;
        goto L_0x00b6;
    L_0x00b1:
        r0 = r9.zzNB;
        r5 = r9.zzND;
        r0 = r0 + r5;
    L_0x00b6:
        r5 = r9.zzNC;
        r8 = r9.zzNE;
        r5 = r5 + r8;
        r8 = r9.zzrX;
        r5 = r5 + r8;
        r5 = r5 - r7;
        goto L_0x00e9;
    L_0x00c0:
        r0 = r9.zzNB;
        r5 = r9.zzND;
        r0 = r0 + r5;
        r5 = r9.zzrW;
        r5 = r5 / r6;
        r0 = r0 + r5;
        r0 = r0 + -25;
        r5 = r9.zzNC;
        r8 = r9.zzNE;
        r5 = r5 + r8;
        r8 = r9.zzrX;
        r8 = r8 / r6;
        r5 = r5 + r8;
        r5 = r5 + -25;
        goto L_0x00e9;
    L_0x00d7:
        r0 = r9.zzNB;
        r5 = r9.zzND;
        r0 = r0 + r5;
        r5 = r9.zzrW;
        r5 = r5 / r6;
        r0 = r0 + r5;
        r0 = r0 + -25;
        goto L_0x0095;
    L_0x00e3:
        r0 = r9.zzNB;
        r5 = r9.zzND;
        r0 = r0 + r5;
        goto L_0x0095;
    L_0x00e9:
        if (r0 < 0) goto L_0x0102;
    L_0x00eb:
        r0 = r0 + r7;
        if (r0 > r3) goto L_0x0102;
    L_0x00ee:
        r0 = r1[r2];
        if (r5 < r0) goto L_0x0102;
    L_0x00f2:
        r5 = r5 + r7;
        r0 = r1[r4];
        if (r5 <= r0) goto L_0x00f8;
    L_0x00f7:
        goto L_0x0102;
    L_0x00f8:
        r0 = 1;
        goto L_0x0103;
    L_0x00fa:
        r0 = "Height is too small or too large.";
        goto L_0x00ff;
    L_0x00fd:
        r0 = "Width is too small or too large.";
    L_0x00ff:
        com.google.android.gms.internal.zzajc.zzaT(r0);
    L_0x0102:
        r0 = 0;
    L_0x0103:
        if (r0 != 0) goto L_0x0107;
    L_0x0105:
        r0 = 0;
        return r0;
    L_0x0107:
        r0 = r9.zzNA;
        if (r0 == 0) goto L_0x011c;
    L_0x010b:
        r0 = new int[r6];
        r1 = r9.zzNB;
        r3 = r9.zzND;
        r1 = r1 + r3;
        r0[r2] = r1;
        r1 = r9.zzNC;
        r2 = r9.zzNE;
        r1 = r1 + r2;
        r0[r4] = r1;
        return r0;
    L_0x011c:
        r0 = com.google.android.gms.ads.internal.zzbs.zzbz();
        r1 = r9.zzNo;
        r0 = r0.zzg(r1);
        r1 = com.google.android.gms.ads.internal.zzbs.zzbz();
        r3 = r9.zzNo;
        r1 = r1.zzh(r3);
        r0 = r0[r2];
        r3 = r9.zzNB;
        r5 = r9.zzND;
        r3 = r3 + r5;
        r5 = r9.zzNC;
        r7 = r9.zzNE;
        r5 = r5 + r7;
        if (r3 >= 0) goto L_0x0140;
    L_0x013e:
        r0 = 0;
        goto L_0x014a;
    L_0x0140:
        r7 = r9.zzrW;
        r7 = r7 + r3;
        if (r7 <= r0) goto L_0x0149;
    L_0x0145:
        r3 = r9.zzrW;
        r0 = r0 - r3;
        goto L_0x014a;
    L_0x0149:
        r0 = r3;
    L_0x014a:
        r3 = r1[r2];
        if (r5 >= r3) goto L_0x0151;
    L_0x014e:
        r5 = r1[r2];
        goto L_0x015e;
    L_0x0151:
        r3 = r9.zzrX;
        r3 = r3 + r5;
        r7 = r1[r4];
        if (r3 <= r7) goto L_0x015e;
    L_0x0158:
        r1 = r1[r4];
        r3 = r9.zzrX;
        r5 = r1 - r3;
    L_0x015e:
        r1 = new int[r6];
        r1[r2] = r0;
        r1[r4] = r5;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzwk.zzfB():int[]");
    }

    /* JADX WARNING: Missing block: B:95:0x0240, code skipped:
            r4.addRule(11);
     */
    /* JADX WARNING: Missing block: B:97:0x0247, code skipped:
            r4.addRule(14);
     */
    /* JADX WARNING: Missing block: B:99:0x024e, code skipped:
            r4.addRule(9);
     */
    /* JADX WARNING: Missing block: B:103:0x0260, code skipped:
            r11.zzNG.setOnClickListener(new com.google.android.gms.internal.zzwl(r11));
            r11.zzNG.setContentDescription("Close button");
            r11.zzNJ.addView(r11.zzNG, r4);
     */
    /* JADX WARNING: Missing block: B:105:?, code skipped:
            r4 = r11.zzNI;
            r12 = r12.getDecorView();
            com.google.android.gms.internal.zzji.zzds();
            r5 = com.google.android.gms.internal.zzaiy.zzc(r11.zzNo, r3[0]);
            com.google.android.gms.internal.zzji.zzds();
            r4.showAtLocation(r12, 0, r5, com.google.android.gms.internal.zzaiy.zzc(r11.zzNo, r3[1]));
     */
    /* JADX WARNING: Missing block: B:107:?, code skipped:
            r12 = r3[0];
            r4 = r3[1];
     */
    /* JADX WARNING: Missing block: B:108:0x029d, code skipped:
            if (r11.zzNH == null) goto L_0x02a8;
     */
    /* JADX WARNING: Missing block: B:109:0x029f, code skipped:
            r11.zzNH.zza(r12, r4, r11.zzrW, r11.zzrX);
     */
    /* JADX WARNING: Missing block: B:110:0x02a8, code skipped:
            r11.zzJH.zza(new com.google.android.gms.internal.zziv(r11.zzNo, new com.google.android.gms.ads.AdSize(r11.zzrW, r11.zzrX)));
            zza(r3[0], r3[1]);
            zzap("resized");
     */
    /* JADX WARNING: Missing block: B:112:0x02ca, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:113:0x02cb, code skipped:
            r12 = move-exception;
     */
    /* JADX WARNING: Missing block: B:114:0x02cc, code skipped:
            r1 = "Cannot show popup window: ";
            r12 = java.lang.String.valueOf(r12.getMessage());
     */
    /* JADX WARNING: Missing block: B:115:0x02da, code skipped:
            if (r12.length() != 0) goto L_0x02dc;
     */
    /* JADX WARNING: Missing block: B:116:0x02dc, code skipped:
            r12 = r1.concat(r12);
     */
    /* JADX WARNING: Missing block: B:117:0x02e1, code skipped:
            r12 = new java.lang.String(r1);
     */
    /* JADX WARNING: Missing block: B:118:0x02e6, code skipped:
            zzan(r12);
            r11.zzNJ.removeView(r11.zzJH.getView());
     */
    /* JADX WARNING: Missing block: B:119:0x02f6, code skipped:
            if (r11.zzNK != null) goto L_0x02f8;
     */
    /* JADX WARNING: Missing block: B:120:0x02f8, code skipped:
            r11.zzNK.removeView(r11.zzNF);
            r11.zzNK.addView(r11.zzJH.getView());
            r11.zzJH.zza(r11.zzuZ);
     */
    /* JADX WARNING: Missing block: B:122:0x0312, code skipped:
            return;
     */
    public final void execute(java.util.Map<java.lang.String, java.lang.String> r12) {
        /*
        r11 = this;
        r0 = r11.mLock;
        monitor-enter(r0);
        r1 = r11.zzNo;	 Catch:{ all -> 0x0321 }
        if (r1 != 0) goto L_0x000e;
    L_0x0007:
        r12 = "Not an activity context. Cannot resize.";
        r11.zzan(r12);	 Catch:{ all -> 0x0321 }
        monitor-exit(r0);	 Catch:{ all -> 0x0321 }
        return;
    L_0x000e:
        r1 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r1 = r1.zzam();	 Catch:{ all -> 0x0321 }
        if (r1 != 0) goto L_0x001d;
    L_0x0016:
        r12 = "Webview is not yet available, size is not set.";
        r11.zzan(r12);	 Catch:{ all -> 0x0321 }
        monitor-exit(r0);	 Catch:{ all -> 0x0321 }
        return;
    L_0x001d:
        r1 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r1 = r1.zzam();	 Catch:{ all -> 0x0321 }
        r1 = r1.zzAt;	 Catch:{ all -> 0x0321 }
        if (r1 == 0) goto L_0x002e;
    L_0x0027:
        r12 = "Is interstitial. Cannot resize an interstitial.";
        r11.zzan(r12);	 Catch:{ all -> 0x0321 }
        monitor-exit(r0);	 Catch:{ all -> 0x0321 }
        return;
    L_0x002e:
        r1 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r1 = r1.zziA();	 Catch:{ all -> 0x0321 }
        if (r1 == 0) goto L_0x003d;
    L_0x0036:
        r12 = "Cannot resize an expanded banner.";
        r11.zzan(r12);	 Catch:{ all -> 0x0321 }
        monitor-exit(r0);	 Catch:{ all -> 0x0321 }
        return;
    L_0x003d:
        r1 = "width";
        r1 = r12.get(r1);	 Catch:{ all -> 0x0321 }
        r1 = (java.lang.CharSequence) r1;	 Catch:{ all -> 0x0321 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x0321 }
        if (r1 != 0) goto L_0x005c;
    L_0x004b:
        com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ all -> 0x0321 }
        r1 = "width";
        r1 = r12.get(r1);	 Catch:{ all -> 0x0321 }
        r1 = (java.lang.String) r1;	 Catch:{ all -> 0x0321 }
        r1 = com.google.android.gms.internal.zzagz.zzaJ(r1);	 Catch:{ all -> 0x0321 }
        r11.zzrW = r1;	 Catch:{ all -> 0x0321 }
    L_0x005c:
        r1 = "height";
        r1 = r12.get(r1);	 Catch:{ all -> 0x0321 }
        r1 = (java.lang.CharSequence) r1;	 Catch:{ all -> 0x0321 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x0321 }
        if (r1 != 0) goto L_0x007b;
    L_0x006a:
        com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ all -> 0x0321 }
        r1 = "height";
        r1 = r12.get(r1);	 Catch:{ all -> 0x0321 }
        r1 = (java.lang.String) r1;	 Catch:{ all -> 0x0321 }
        r1 = com.google.android.gms.internal.zzagz.zzaJ(r1);	 Catch:{ all -> 0x0321 }
        r11.zzrX = r1;	 Catch:{ all -> 0x0321 }
    L_0x007b:
        r1 = "offsetX";
        r1 = r12.get(r1);	 Catch:{ all -> 0x0321 }
        r1 = (java.lang.CharSequence) r1;	 Catch:{ all -> 0x0321 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x0321 }
        if (r1 != 0) goto L_0x009a;
    L_0x0089:
        com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ all -> 0x0321 }
        r1 = "offsetX";
        r1 = r12.get(r1);	 Catch:{ all -> 0x0321 }
        r1 = (java.lang.String) r1;	 Catch:{ all -> 0x0321 }
        r1 = com.google.android.gms.internal.zzagz.zzaJ(r1);	 Catch:{ all -> 0x0321 }
        r11.zzND = r1;	 Catch:{ all -> 0x0321 }
    L_0x009a:
        r1 = "offsetY";
        r1 = r12.get(r1);	 Catch:{ all -> 0x0321 }
        r1 = (java.lang.CharSequence) r1;	 Catch:{ all -> 0x0321 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x0321 }
        if (r1 != 0) goto L_0x00b9;
    L_0x00a8:
        com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ all -> 0x0321 }
        r1 = "offsetY";
        r1 = r12.get(r1);	 Catch:{ all -> 0x0321 }
        r1 = (java.lang.String) r1;	 Catch:{ all -> 0x0321 }
        r1 = com.google.android.gms.internal.zzagz.zzaJ(r1);	 Catch:{ all -> 0x0321 }
        r11.zzNE = r1;	 Catch:{ all -> 0x0321 }
    L_0x00b9:
        r1 = "allowOffscreen";
        r1 = r12.get(r1);	 Catch:{ all -> 0x0321 }
        r1 = (java.lang.CharSequence) r1;	 Catch:{ all -> 0x0321 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x0321 }
        if (r1 != 0) goto L_0x00d5;
    L_0x00c7:
        r1 = "allowOffscreen";
        r1 = r12.get(r1);	 Catch:{ all -> 0x0321 }
        r1 = (java.lang.String) r1;	 Catch:{ all -> 0x0321 }
        r1 = java.lang.Boolean.parseBoolean(r1);	 Catch:{ all -> 0x0321 }
        r11.zzNA = r1;	 Catch:{ all -> 0x0321 }
    L_0x00d5:
        r1 = "customClosePosition";
        r12 = r12.get(r1);	 Catch:{ all -> 0x0321 }
        r12 = (java.lang.String) r12;	 Catch:{ all -> 0x0321 }
        r1 = android.text.TextUtils.isEmpty(r12);	 Catch:{ all -> 0x0321 }
        if (r1 != 0) goto L_0x00e5;
    L_0x00e3:
        r11.zzNz = r12;	 Catch:{ all -> 0x0321 }
    L_0x00e5:
        r12 = r11.zzrW;	 Catch:{ all -> 0x0321 }
        r1 = 0;
        r2 = 1;
        if (r12 < 0) goto L_0x00f1;
    L_0x00eb:
        r12 = r11.zzrX;	 Catch:{ all -> 0x0321 }
        if (r12 < 0) goto L_0x00f1;
    L_0x00ef:
        r12 = 1;
        goto L_0x00f2;
    L_0x00f1:
        r12 = 0;
    L_0x00f2:
        if (r12 != 0) goto L_0x00fb;
    L_0x00f4:
        r12 = "Invalid width and height options. Cannot resize.";
        r11.zzan(r12);	 Catch:{ all -> 0x0321 }
        monitor-exit(r0);	 Catch:{ all -> 0x0321 }
        return;
    L_0x00fb:
        r12 = r11.zzNo;	 Catch:{ all -> 0x0321 }
        r12 = r12.getWindow();	 Catch:{ all -> 0x0321 }
        if (r12 == 0) goto L_0x031a;
    L_0x0103:
        r3 = r12.getDecorView();	 Catch:{ all -> 0x0321 }
        if (r3 != 0) goto L_0x010b;
    L_0x0109:
        goto L_0x031a;
    L_0x010b:
        r3 = r11.zzfB();	 Catch:{ all -> 0x0321 }
        if (r3 != 0) goto L_0x0118;
    L_0x0111:
        r12 = "Resize location out of screen or close button is not visible.";
        r11.zzan(r12);	 Catch:{ all -> 0x0321 }
        monitor-exit(r0);	 Catch:{ all -> 0x0321 }
        return;
    L_0x0118:
        com.google.android.gms.internal.zzji.zzds();	 Catch:{ all -> 0x0321 }
        r4 = r11.zzNo;	 Catch:{ all -> 0x0321 }
        r5 = r11.zzrW;	 Catch:{ all -> 0x0321 }
        r4 = com.google.android.gms.internal.zzaiy.zzc(r4, r5);	 Catch:{ all -> 0x0321 }
        com.google.android.gms.internal.zzji.zzds();	 Catch:{ all -> 0x0321 }
        r5 = r11.zzNo;	 Catch:{ all -> 0x0321 }
        r6 = r11.zzrX;	 Catch:{ all -> 0x0321 }
        r5 = com.google.android.gms.internal.zzaiy.zzc(r5, r6);	 Catch:{ all -> 0x0321 }
        r6 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r6 = r6.getView();	 Catch:{ all -> 0x0321 }
        r6 = r6.getParent();	 Catch:{ all -> 0x0321 }
        if (r6 == 0) goto L_0x0313;
    L_0x013a:
        r7 = r6 instanceof android.view.ViewGroup;	 Catch:{ all -> 0x0321 }
        if (r7 == 0) goto L_0x0313;
    L_0x013e:
        r7 = r6;
        r7 = (android.view.ViewGroup) r7;	 Catch:{ all -> 0x0321 }
        r8 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r8 = r8.getView();	 Catch:{ all -> 0x0321 }
        r7.removeView(r8);	 Catch:{ all -> 0x0321 }
        r7 = r11.zzNI;	 Catch:{ all -> 0x0321 }
        if (r7 != 0) goto L_0x017d;
    L_0x014e:
        r6 = (android.view.ViewGroup) r6;	 Catch:{ all -> 0x0321 }
        r11.zzNK = r6;	 Catch:{ all -> 0x0321 }
        com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ all -> 0x0321 }
        r6 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r6 = r6.getView();	 Catch:{ all -> 0x0321 }
        r6 = com.google.android.gms.internal.zzagz.zzl(r6);	 Catch:{ all -> 0x0321 }
        r7 = new android.widget.ImageView;	 Catch:{ all -> 0x0321 }
        r8 = r11.zzNo;	 Catch:{ all -> 0x0321 }
        r7.<init>(r8);	 Catch:{ all -> 0x0321 }
        r11.zzNF = r7;	 Catch:{ all -> 0x0321 }
        r7 = r11.zzNF;	 Catch:{ all -> 0x0321 }
        r7.setImageBitmap(r6);	 Catch:{ all -> 0x0321 }
        r6 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r6 = r6.zzam();	 Catch:{ all -> 0x0321 }
        r11.zzuZ = r6;	 Catch:{ all -> 0x0321 }
        r6 = r11.zzNK;	 Catch:{ all -> 0x0321 }
        r7 = r11.zzNF;	 Catch:{ all -> 0x0321 }
        r6.addView(r7);	 Catch:{ all -> 0x0321 }
        goto L_0x0182;
    L_0x017d:
        r6 = r11.zzNI;	 Catch:{ all -> 0x0321 }
        r6.dismiss();	 Catch:{ all -> 0x0321 }
    L_0x0182:
        r6 = new android.widget.RelativeLayout;	 Catch:{ all -> 0x0321 }
        r7 = r11.zzNo;	 Catch:{ all -> 0x0321 }
        r6.<init>(r7);	 Catch:{ all -> 0x0321 }
        r11.zzNJ = r6;	 Catch:{ all -> 0x0321 }
        r6 = r11.zzNJ;	 Catch:{ all -> 0x0321 }
        r6.setBackgroundColor(r1);	 Catch:{ all -> 0x0321 }
        r6 = r11.zzNJ;	 Catch:{ all -> 0x0321 }
        r7 = new android.view.ViewGroup$LayoutParams;	 Catch:{ all -> 0x0321 }
        r7.<init>(r4, r5);	 Catch:{ all -> 0x0321 }
        r6.setLayoutParams(r7);	 Catch:{ all -> 0x0321 }
        com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ all -> 0x0321 }
        r6 = r11.zzNJ;	 Catch:{ all -> 0x0321 }
        r4 = com.google.android.gms.internal.zzagz.zza(r6, r4, r5, r1);	 Catch:{ all -> 0x0321 }
        r11.zzNI = r4;	 Catch:{ all -> 0x0321 }
        r4 = r11.zzNI;	 Catch:{ all -> 0x0321 }
        r4.setOutsideTouchable(r2);	 Catch:{ all -> 0x0321 }
        r4 = r11.zzNI;	 Catch:{ all -> 0x0321 }
        r4.setTouchable(r2);	 Catch:{ all -> 0x0321 }
        r4 = r11.zzNI;	 Catch:{ all -> 0x0321 }
        r5 = r11.zzNA;	 Catch:{ all -> 0x0321 }
        r5 = r5 ^ r2;
        r4.setClippingEnabled(r5);	 Catch:{ all -> 0x0321 }
        r4 = r11.zzNJ;	 Catch:{ all -> 0x0321 }
        r5 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r5 = r5.getView();	 Catch:{ all -> 0x0321 }
        r6 = -1;
        r4.addView(r5, r6, r6);	 Catch:{ all -> 0x0321 }
        r4 = new android.widget.LinearLayout;	 Catch:{ all -> 0x0321 }
        r5 = r11.zzNo;	 Catch:{ all -> 0x0321 }
        r4.<init>(r5);	 Catch:{ all -> 0x0321 }
        r11.zzNG = r4;	 Catch:{ all -> 0x0321 }
        r4 = new android.widget.RelativeLayout$LayoutParams;	 Catch:{ all -> 0x0321 }
        com.google.android.gms.internal.zzji.zzds();	 Catch:{ all -> 0x0321 }
        r5 = r11.zzNo;	 Catch:{ all -> 0x0321 }
        r7 = 50;
        r5 = com.google.android.gms.internal.zzaiy.zzc(r5, r7);	 Catch:{ all -> 0x0321 }
        com.google.android.gms.internal.zzji.zzds();	 Catch:{ all -> 0x0321 }
        r8 = r11.zzNo;	 Catch:{ all -> 0x0321 }
        r7 = com.google.android.gms.internal.zzaiy.zzc(r8, r7);	 Catch:{ all -> 0x0321 }
        r4.<init>(r5, r7);	 Catch:{ all -> 0x0321 }
        r5 = r11.zzNz;	 Catch:{ all -> 0x0321 }
        r7 = r5.hashCode();	 Catch:{ all -> 0x0321 }
        switch(r7) {
            case -1364013995: goto L_0x0221;
            case -1012429441: goto L_0x0217;
            case -655373719: goto L_0x020d;
            case 1163912186: goto L_0x0203;
            case 1288627767: goto L_0x01f9;
            case 1755462605: goto L_0x01ef;
            default: goto L_0x01ee;
        };	 Catch:{ all -> 0x0321 }
    L_0x01ee:
        goto L_0x022b;
    L_0x01ef:
        r7 = "top-center";
        r5 = r5.equals(r7);	 Catch:{ all -> 0x0321 }
        if (r5 == 0) goto L_0x022b;
    L_0x01f7:
        r5 = 1;
        goto L_0x022c;
    L_0x01f9:
        r7 = "bottom-center";
        r5 = r5.equals(r7);	 Catch:{ all -> 0x0321 }
        if (r5 == 0) goto L_0x022b;
    L_0x0201:
        r5 = 4;
        goto L_0x022c;
    L_0x0203:
        r7 = "bottom-right";
        r5 = r5.equals(r7);	 Catch:{ all -> 0x0321 }
        if (r5 == 0) goto L_0x022b;
    L_0x020b:
        r5 = 5;
        goto L_0x022c;
    L_0x020d:
        r7 = "bottom-left";
        r5 = r5.equals(r7);	 Catch:{ all -> 0x0321 }
        if (r5 == 0) goto L_0x022b;
    L_0x0215:
        r5 = 3;
        goto L_0x022c;
    L_0x0217:
        r7 = "top-left";
        r5 = r5.equals(r7);	 Catch:{ all -> 0x0321 }
        if (r5 == 0) goto L_0x022b;
    L_0x021f:
        r5 = 0;
        goto L_0x022c;
    L_0x0221:
        r7 = "center";
        r5 = r5.equals(r7);	 Catch:{ all -> 0x0321 }
        if (r5 == 0) goto L_0x022b;
    L_0x0229:
        r5 = 2;
        goto L_0x022c;
    L_0x022b:
        r5 = -1;
    L_0x022c:
        r6 = 9;
        r7 = 14;
        r8 = 11;
        r9 = 12;
        r10 = 10;
        switch(r5) {
            case 0: goto L_0x025c;
            case 1: goto L_0x0258;
            case 2: goto L_0x0252;
            case 3: goto L_0x024b;
            case 4: goto L_0x0244;
            case 5: goto L_0x023d;
            default: goto L_0x0239;
        };	 Catch:{ all -> 0x0321 }
    L_0x0239:
        r4.addRule(r10);	 Catch:{ all -> 0x0321 }
        goto L_0x0240;
    L_0x023d:
        r4.addRule(r9);	 Catch:{ all -> 0x0321 }
    L_0x0240:
        r4.addRule(r8);	 Catch:{ all -> 0x0321 }
        goto L_0x0260;
    L_0x0244:
        r4.addRule(r9);	 Catch:{ all -> 0x0321 }
    L_0x0247:
        r4.addRule(r7);	 Catch:{ all -> 0x0321 }
        goto L_0x0260;
    L_0x024b:
        r4.addRule(r9);	 Catch:{ all -> 0x0321 }
    L_0x024e:
        r4.addRule(r6);	 Catch:{ all -> 0x0321 }
        goto L_0x0260;
    L_0x0252:
        r5 = 13;
        r4.addRule(r5);	 Catch:{ all -> 0x0321 }
        goto L_0x0260;
    L_0x0258:
        r4.addRule(r10);	 Catch:{ all -> 0x0321 }
        goto L_0x0247;
    L_0x025c:
        r4.addRule(r10);	 Catch:{ all -> 0x0321 }
        goto L_0x024e;
    L_0x0260:
        r5 = r11.zzNG;	 Catch:{ all -> 0x0321 }
        r6 = new com.google.android.gms.internal.zzwl;	 Catch:{ all -> 0x0321 }
        r6.<init>(r11);	 Catch:{ all -> 0x0321 }
        r5.setOnClickListener(r6);	 Catch:{ all -> 0x0321 }
        r5 = r11.zzNG;	 Catch:{ all -> 0x0321 }
        r6 = "Close button";
        r5.setContentDescription(r6);	 Catch:{ all -> 0x0321 }
        r5 = r11.zzNJ;	 Catch:{ all -> 0x0321 }
        r6 = r11.zzNG;	 Catch:{ all -> 0x0321 }
        r5.addView(r6, r4);	 Catch:{ all -> 0x0321 }
        r4 = r11.zzNI;	 Catch:{ RuntimeException -> 0x02cb }
        r12 = r12.getDecorView();	 Catch:{ RuntimeException -> 0x02cb }
        com.google.android.gms.internal.zzji.zzds();	 Catch:{ RuntimeException -> 0x02cb }
        r5 = r11.zzNo;	 Catch:{ RuntimeException -> 0x02cb }
        r6 = r3[r1];	 Catch:{ RuntimeException -> 0x02cb }
        r5 = com.google.android.gms.internal.zzaiy.zzc(r5, r6);	 Catch:{ RuntimeException -> 0x02cb }
        com.google.android.gms.internal.zzji.zzds();	 Catch:{ RuntimeException -> 0x02cb }
        r6 = r11.zzNo;	 Catch:{ RuntimeException -> 0x02cb }
        r7 = r3[r2];	 Catch:{ RuntimeException -> 0x02cb }
        r6 = com.google.android.gms.internal.zzaiy.zzc(r6, r7);	 Catch:{ RuntimeException -> 0x02cb }
        r4.showAtLocation(r12, r1, r5, r6);	 Catch:{ RuntimeException -> 0x02cb }
        r12 = r3[r1];	 Catch:{ all -> 0x0321 }
        r4 = r3[r2];	 Catch:{ all -> 0x0321 }
        r5 = r11.zzNH;	 Catch:{ all -> 0x0321 }
        if (r5 == 0) goto L_0x02a8;
    L_0x029f:
        r5 = r11.zzNH;	 Catch:{ all -> 0x0321 }
        r6 = r11.zzrW;	 Catch:{ all -> 0x0321 }
        r7 = r11.zzrX;	 Catch:{ all -> 0x0321 }
        r5.zza(r12, r4, r6, r7);	 Catch:{ all -> 0x0321 }
    L_0x02a8:
        r12 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r4 = new com.google.android.gms.internal.zziv;	 Catch:{ all -> 0x0321 }
        r5 = r11.zzNo;	 Catch:{ all -> 0x0321 }
        r6 = new com.google.android.gms.ads.AdSize;	 Catch:{ all -> 0x0321 }
        r7 = r11.zzrW;	 Catch:{ all -> 0x0321 }
        r8 = r11.zzrX;	 Catch:{ all -> 0x0321 }
        r6.<init>(r7, r8);	 Catch:{ all -> 0x0321 }
        r4.<init>(r5, r6);	 Catch:{ all -> 0x0321 }
        r12.zza(r4);	 Catch:{ all -> 0x0321 }
        r12 = r3[r1];	 Catch:{ all -> 0x0321 }
        r1 = r3[r2];	 Catch:{ all -> 0x0321 }
        r11.zza(r12, r1);	 Catch:{ all -> 0x0321 }
        r12 = "resized";
        r11.zzap(r12);	 Catch:{ all -> 0x0321 }
        monitor-exit(r0);	 Catch:{ all -> 0x0321 }
        return;
    L_0x02cb:
        r12 = move-exception;
        r1 = "Cannot show popup window: ";
        r12 = r12.getMessage();	 Catch:{ all -> 0x0321 }
        r12 = java.lang.String.valueOf(r12);	 Catch:{ all -> 0x0321 }
        r2 = r12.length();	 Catch:{ all -> 0x0321 }
        if (r2 == 0) goto L_0x02e1;
    L_0x02dc:
        r12 = r1.concat(r12);	 Catch:{ all -> 0x0321 }
        goto L_0x02e6;
    L_0x02e1:
        r12 = new java.lang.String;	 Catch:{ all -> 0x0321 }
        r12.<init>(r1);	 Catch:{ all -> 0x0321 }
    L_0x02e6:
        r11.zzan(r12);	 Catch:{ all -> 0x0321 }
        r12 = r11.zzNJ;	 Catch:{ all -> 0x0321 }
        r1 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r1 = r1.getView();	 Catch:{ all -> 0x0321 }
        r12.removeView(r1);	 Catch:{ all -> 0x0321 }
        r12 = r11.zzNK;	 Catch:{ all -> 0x0321 }
        if (r12 == 0) goto L_0x0311;
    L_0x02f8:
        r12 = r11.zzNK;	 Catch:{ all -> 0x0321 }
        r1 = r11.zzNF;	 Catch:{ all -> 0x0321 }
        r12.removeView(r1);	 Catch:{ all -> 0x0321 }
        r12 = r11.zzNK;	 Catch:{ all -> 0x0321 }
        r1 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r1 = r1.getView();	 Catch:{ all -> 0x0321 }
        r12.addView(r1);	 Catch:{ all -> 0x0321 }
        r12 = r11.zzJH;	 Catch:{ all -> 0x0321 }
        r1 = r11.zzuZ;	 Catch:{ all -> 0x0321 }
        r12.zza(r1);	 Catch:{ all -> 0x0321 }
    L_0x0311:
        monitor-exit(r0);	 Catch:{ all -> 0x0321 }
        return;
    L_0x0313:
        r12 = "Webview is detached, probably in the middle of a resize or expand.";
        r11.zzan(r12);	 Catch:{ all -> 0x0321 }
        monitor-exit(r0);	 Catch:{ all -> 0x0321 }
        return;
    L_0x031a:
        r12 = "Activity context is not ready, cannot get window or decor view.";
        r11.zzan(r12);	 Catch:{ all -> 0x0321 }
        monitor-exit(r0);	 Catch:{ all -> 0x0321 }
        return;
    L_0x0321:
        r12 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0321 }
        throw r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzwk.execute(java.util.Map):void");
    }

    public final void zza(int i, int i2, boolean z) {
        synchronized (this.mLock) {
            this.zzNB = i;
            this.zzNC = i2;
            if (this.zzNI != null && z) {
                int[] zzfB = zzfB();
                if (zzfB != null) {
                    PopupWindow popupWindow = this.zzNI;
                    zzji.zzds();
                    int zzc = zzaiy.zzc(this.zzNo, zzfB[0]);
                    zzji.zzds();
                    popupWindow.update(zzc, zzaiy.zzc(this.zzNo, zzfB[1]), this.zzNI.getWidth(), this.zzNI.getHeight());
                    zza(zzfB[0], zzfB[1]);
                } else {
                    zzk(true);
                }
            }
        }
    }

    public final void zzb(int i, int i2) {
        this.zzNB = i;
        this.zzNC = i2;
    }

    public final boolean zzfC() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzNI != null;
        }
        return z;
    }

    public final void zzk(boolean z) {
        synchronized (this.mLock) {
            if (this.zzNI != null) {
                this.zzNI.dismiss();
                this.zzNJ.removeView(this.zzJH.getView());
                if (this.zzNK != null) {
                    this.zzNK.removeView(this.zzNF);
                    this.zzNK.addView(this.zzJH.getView());
                    this.zzJH.zza(this.zzuZ);
                }
                if (z) {
                    zzap("default");
                    if (this.zzNH != null) {
                        this.zzNH.zzaN();
                    }
                }
                this.zzNI = null;
                this.zzNJ = null;
                this.zzNK = null;
                this.zzNG = null;
            }
        }
    }
}
