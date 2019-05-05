package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.Iterator;
import java.util.List;

@zzzn
public final class zzyd extends zzxt {
    private final zzaka zzJH;
    private zzub zzMu;
    private zztz zzRc;
    protected zzuh zzRd;
    private boolean zzRe;
    private final zznb zzsK;
    private zzuq zzsX;

    zzyd(Context context, zzafg zzafg, zzuq zzuq, zzxy zzxy, zznb zznb, zzaka zzaka) {
        super(context, zzafg, zzxy);
        this.zzsX = zzuq;
        this.zzMu = zzafg.zzXN;
        this.zzsK = zznb;
        this.zzJH = zzaka;
    }

    private static String zzi(List<zzuh> list) {
        Object obj = "";
        if (list == null) {
            return obj.toString();
        }
        Iterator it = list.iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                return obj.substring(0, Math.max(0, obj.length() - 1));
            }
            zzuh zzuh = (zzuh) it.next();
            if (!(zzuh == null || zzuh.zzMG == null || TextUtils.isEmpty(zzuh.zzMG.zzLK))) {
                String valueOf = String.valueOf(obj);
                String str = zzuh.zzMG.zzLK;
                switch (zzuh.zzMF) {
                    case -1:
                        i = 4;
                        break;
                    case 0:
                        break;
                    case 1:
                        i = 1;
                        break;
                    case 3:
                        i = 2;
                        break;
                    case 4:
                        i = 3;
                        break;
                    case 5:
                        i = 5;
                        break;
                    default:
                        i = 6;
                        break;
                }
                long j = zzuh.zzML;
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 33);
                stringBuilder.append(str);
                stringBuilder.append(".");
                stringBuilder.append(i);
                stringBuilder.append(".");
                stringBuilder.append(j);
                String valueOf2 = String.valueOf(stringBuilder.toString());
                StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length());
                stringBuilder2.append(valueOf);
                stringBuilder2.append(valueOf2);
                stringBuilder2.append("_");
                obj = stringBuilder2.toString();
            }
        }
    }

    public final void onStop() {
        synchronized (this.zzQT) {
            super.onStop();
            if (this.zzRc != null) {
                this.zzRc.cancel();
            }
        }
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x00a7  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00d2  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00f8  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00ef  */
    public final void zzd(long r32) throws com.google.android.gms.internal.zzxw {
        /*
        r31 = this;
        r1 = r31;
        r2 = r1.zzQT;
        monitor-enter(r2);
        r3 = r1.zzMu;	 Catch:{ all -> 0x016a }
        r3 = r3.zzMj;	 Catch:{ all -> 0x016a }
        r4 = -1;
        if (r3 == r4) goto L_0x003d;
    L_0x000c:
        r3 = new com.google.android.gms.internal.zzuk;	 Catch:{ all -> 0x016a }
        r6 = r1.mContext;	 Catch:{ all -> 0x016a }
        r4 = r1.zzQQ;	 Catch:{ all -> 0x016a }
        r7 = r4.zzUj;	 Catch:{ all -> 0x016a }
        r8 = r1.zzsX;	 Catch:{ all -> 0x016a }
        r9 = r1.zzMu;	 Catch:{ all -> 0x016a }
        r4 = r1.zzQR;	 Catch:{ all -> 0x016a }
        r10 = r4.zzAv;	 Catch:{ all -> 0x016a }
        r4 = r1.zzQR;	 Catch:{ all -> 0x016a }
        r11 = r4.zzAx;	 Catch:{ all -> 0x016a }
        r4 = r1.zzQR;	 Catch:{ all -> 0x016a }
        r12 = r4.zzTI;	 Catch:{ all -> 0x016a }
        r4 = com.google.android.gms.internal.zzmo.zzEL;	 Catch:{ all -> 0x016a }
        r5 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x016a }
        r4 = r5.zzd(r4);	 Catch:{ all -> 0x016a }
        r4 = (java.lang.Long) r4;	 Catch:{ all -> 0x016a }
        r15 = r4.longValue();	 Catch:{ all -> 0x016a }
        r17 = 2;
        r5 = r3;
        r13 = r32;
        r5.<init>(r6, r7, r8, r9, r10, r11, r12, r13, r15, r17);	 Catch:{ all -> 0x016a }
        goto L_0x007e;
    L_0x003d:
        r3 = new com.google.android.gms.internal.zzun;	 Catch:{ all -> 0x016a }
        r4 = r1.mContext;	 Catch:{ all -> 0x016a }
        r5 = r1.zzQQ;	 Catch:{ all -> 0x016a }
        r5 = r5.zzUj;	 Catch:{ all -> 0x016a }
        r6 = r1.zzsX;	 Catch:{ all -> 0x016a }
        r7 = r1.zzMu;	 Catch:{ all -> 0x016a }
        r8 = r1.zzQR;	 Catch:{ all -> 0x016a }
        r8 = r8.zzAv;	 Catch:{ all -> 0x016a }
        r9 = r1.zzQR;	 Catch:{ all -> 0x016a }
        r9 = r9.zzAx;	 Catch:{ all -> 0x016a }
        r10 = r1.zzQR;	 Catch:{ all -> 0x016a }
        r10 = r10.zzTI;	 Catch:{ all -> 0x016a }
        r11 = com.google.android.gms.internal.zzmo.zzEL;	 Catch:{ all -> 0x016a }
        r12 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x016a }
        r11 = r12.zzd(r11);	 Catch:{ all -> 0x016a }
        r11 = (java.lang.Long) r11;	 Catch:{ all -> 0x016a }
        r28 = r11.longValue();	 Catch:{ all -> 0x016a }
        r11 = r1.zzsK;	 Catch:{ all -> 0x016a }
        r18 = r3;
        r19 = r4;
        r20 = r5;
        r21 = r6;
        r22 = r7;
        r23 = r8;
        r24 = r9;
        r25 = r10;
        r26 = r32;
        r30 = r11;
        r18.<init>(r19, r20, r21, r22, r23, r24, r25, r26, r28, r30);	 Catch:{ all -> 0x016a }
    L_0x007e:
        r1.zzRc = r3;	 Catch:{ all -> 0x016a }
        monitor-exit(r2);	 Catch:{ all -> 0x016a }
        r2 = new java.util.ArrayList;
        r3 = r1.zzMu;
        r3 = r3.zzLY;
        r2.<init>(r3);
        r3 = r1.zzQQ;
        r3 = r3.zzUj;
        r3 = r3.zzSz;
        r3 = r3.zzzX;
        r4 = "com.google.ads.mediation.admob.AdMobAdapter";
        r5 = 0;
        if (r3 == 0) goto L_0x00a4;
    L_0x0097:
        r3 = r3.getBundle(r4);
        if (r3 == 0) goto L_0x00a4;
    L_0x009d:
        r6 = "_skipMediation";
        r3 = r3.getBoolean(r6);
        goto L_0x00a5;
    L_0x00a4:
        r3 = 0;
    L_0x00a5:
        if (r3 == 0) goto L_0x00c3;
    L_0x00a7:
        r3 = r2.listIterator();
    L_0x00ab:
        r6 = r3.hasNext();
        if (r6 == 0) goto L_0x00c3;
    L_0x00b1:
        r6 = r3.next();
        r6 = (com.google.android.gms.internal.zzua) r6;
        r6 = r6.zzLJ;
        r6 = r6.contains(r4);
        if (r6 != 0) goto L_0x00ab;
    L_0x00bf:
        r3.remove();
        goto L_0x00ab;
    L_0x00c3:
        r3 = r1.zzRc;
        r2 = r3.zzf(r2);
        r1.zzRd = r2;
        r2 = r1.zzRd;
        r2 = r2.zzMF;
        switch(r2) {
            case 0: goto L_0x00f8;
            case 1: goto L_0x00ef;
            default: goto L_0x00d2;
        };
    L_0x00d2:
        r2 = new com.google.android.gms.internal.zzxw;
        r3 = r1.zzRd;
        r3 = r3.zzMF;
        r4 = 40;
        r6 = new java.lang.StringBuilder;
        r6.<init>(r4);
        r4 = "Unexpected mediation result: ";
        r6.append(r4);
        r6.append(r3);
        r3 = r6.toString();
        r2.<init>(r3, r5);
        throw r2;
    L_0x00ef:
        r2 = new com.google.android.gms.internal.zzxw;
        r3 = "No fill from any mediation ad networks.";
        r4 = 3;
        r2.<init>(r3, r4);
        throw r2;
    L_0x00f8:
        r2 = r1.zzRd;
        r2 = r2.zzMG;
        if (r2 == 0) goto L_0x0169;
    L_0x00fe:
        r2 = r1.zzRd;
        r2 = r2.zzMG;
        r2 = r2.zzLS;
        if (r2 == 0) goto L_0x0169;
    L_0x0106:
        r2 = new java.util.concurrent.CountDownLatch;
        r3 = 1;
        r2.<init>(r3);
        r3 = com.google.android.gms.internal.zzagz.zzZr;
        r4 = new com.google.android.gms.internal.zzye;
        r4.<init>(r1, r2);
        r3.post(r4);
        r3 = 10;
        r6 = java.util.concurrent.TimeUnit.SECONDS;	 Catch:{ InterruptedException -> 0x0142 }
        r2.await(r3, r6);	 Catch:{ InterruptedException -> 0x0142 }
        r2 = r1.zzQT;
        monitor-enter(r2);
        r3 = r1.zzRe;	 Catch:{ all -> 0x013e }
        if (r3 != 0) goto L_0x012c;
    L_0x0124:
        r3 = new com.google.android.gms.internal.zzxw;	 Catch:{ all -> 0x013e }
        r4 = "View could not be prepared";
        r3.<init>(r4, r5);	 Catch:{ all -> 0x013e }
        throw r3;	 Catch:{ all -> 0x013e }
    L_0x012c:
        r3 = r1.zzJH;	 Catch:{ all -> 0x013e }
        r3 = r3.isDestroyed();	 Catch:{ all -> 0x013e }
        if (r3 == 0) goto L_0x013c;
    L_0x0134:
        r3 = new com.google.android.gms.internal.zzxw;	 Catch:{ all -> 0x013e }
        r4 = "Assets not loaded, web view is destroyed";
        r3.<init>(r4, r5);	 Catch:{ all -> 0x013e }
        throw r3;	 Catch:{ all -> 0x013e }
    L_0x013c:
        monitor-exit(r2);	 Catch:{ all -> 0x013e }
        return;
    L_0x013e:
        r0 = move-exception;
        r3 = r0;
        monitor-exit(r2);	 Catch:{ all -> 0x013e }
        throw r3;
    L_0x0142:
        r0 = move-exception;
        r2 = r0;
        r3 = new com.google.android.gms.internal.zzxw;
        r2 = java.lang.String.valueOf(r2);
        r4 = java.lang.String.valueOf(r2);
        r4 = r4.length();
        r4 = r4 + 38;
        r6 = new java.lang.StringBuilder;
        r6.<init>(r4);
        r4 = "Interrupted while waiting for latch : ";
        r6.append(r4);
        r6.append(r2);
        r2 = r6.toString();
        r3.<init>(r2, r5);
        throw r3;
    L_0x0169:
        return;
    L_0x016a:
        r0 = move-exception;
        r3 = r0;
        monitor-exit(r2);	 Catch:{ all -> 0x016a }
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzyd.zzd(long):void");
    }

    /* Access modifiers changed, original: protected|final */
    public final zzaff zzs(int i) {
        zzaae zzaae = this.zzQQ.zzUj;
        zzir zzir = zzaae.zzSz;
        zzaka zzaka = this.zzJH;
        List list = this.zzQR.zzMa;
        List list2 = this.zzQR.zzMb;
        List list3 = this.zzQR.zzTq;
        int i2 = this.zzQR.orientation;
        long j = this.zzQR.zzMg;
        String str = zzaae.zzSC;
        boolean z = this.zzQR.zzTo;
        zzua zzua = this.zzRd != null ? this.zzRd.zzMG : null;
        zzut zzut = this.zzRd != null ? this.zzRd.zzMH : null;
        return new zzaff(zzir, zzaka, list, i, list2, list3, i2, j, str, z, zzua, zzut, this.zzRd != null ? this.zzRd.zzMI : AdMobAdapter.class.getName(), this.zzMu, this.zzRd != null ? this.zzRd.zzMJ : null, this.zzQR.zzTp, this.zzQQ.zzvX, this.zzQR.zzTn, this.zzQQ.zzXR, this.zzQR.zzTs, this.zzQR.zzTt, this.zzQQ.zzXL, null, this.zzQR.zzTD, this.zzQR.zzTE, this.zzQR.zzTF, this.zzMu != null ? this.zzMu.zzMl : false, this.zzQR.zzTH, this.zzRc != null ? zzi(this.zzRc.zzfg()) : null, this.zzQR.zzMd, this.zzQR.zzTK, this.zzQQ.zzXX);
    }
}
