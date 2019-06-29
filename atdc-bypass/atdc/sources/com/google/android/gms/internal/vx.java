package com.google.android.gms.internal;

import java.util.Map;
import java.util.Map.Entry;

public final class vx {
    private static wg zzchu = new vy();
    private final wf zzcht;

    public vx(wf wfVar) {
        this.zzcht = wfVar;
    }

    private final vw zza(vw vwVar, qr qrVar, pz pzVar, ts tsVar, xm xmVar, boolean z, wc wcVar) {
        if (vwVar.zzIA().zzFn().isEmpty() && !vwVar.zzIA().zzHU()) {
            return vwVar;
        }
        pz zzb = qrVar.isEmpty() ? pzVar : pz.zzGI().zzb(qrVar, pzVar);
        xm zzFn = vwVar.zzIA().zzFn();
        Map zzGL = zzb.zzGL();
        vw vwVar2 = vwVar;
        for (Entry entry : zzGL.entrySet()) {
            wp wpVar = (wp) entry.getKey();
            if (zzFn.zzk(wpVar)) {
                vwVar2 = zza(vwVar2, new qr(wpVar), ((pz) entry.getValue()).zzb(zzFn.zzm(wpVar)), tsVar, xmVar, z, wcVar);
            }
        }
        vw vwVar3 = vwVar2;
        for (Entry entry2 : zzGL.entrySet()) {
            wp wpVar2 = (wp) entry2.getKey();
            Object obj = (vwVar.zzIA().zzf(wpVar2) || ((pz) entry2.getValue()).zzGJ() != null) ? null : 1;
            if (!zzFn.zzk(wpVar2) && obj == null) {
                vwVar3 = zza(vwVar3, new qr(wpVar2), ((pz) entry2.getValue()).zzb(zzFn.zzm(wpVar2)), tsVar, xmVar, z, wcVar);
            }
        }
        return vwVar3;
    }

    private final vw zza(vw vwVar, qr qrVar, ts tsVar, wg wgVar, wc wcVar) {
        vg zzIy = vwVar.zzIy();
        if (tsVar.zzu(qrVar) != null) {
            return vwVar;
        }
        xf zza;
        xm zzd;
        if (qrVar.isEmpty()) {
            if (vwVar.zzIA().zzHV()) {
                xm zzIB = vwVar.zzIB();
                if (!(zzIB instanceof wr)) {
                    zzIB = xd.zzJb();
                }
                zzd = tsVar.zzd(zzIB);
            } else {
                zzd = tsVar.zzc(vwVar.zzIB());
            }
            zza = this.zzcht.zza(vwVar.zzIy().zzHW(), xf.zza(zzd, this.zzcht.zzIm()), wcVar);
        } else {
            wp zzHc = qrVar.zzHc();
            if (zzHc.zzIN()) {
                zzd = tsVar.zza(qrVar, zzIy.zzFn(), vwVar.zzIA().zzFn());
                if (zzd != null) {
                    zza = this.zzcht.zza(zzIy.zzHW(), zzd);
                }
            } else {
                qr zzHd = qrVar.zzHd();
                if (zzIy.zzf(zzHc)) {
                    zzd = tsVar.zza(qrVar, zzIy.zzFn(), vwVar.zzIA().zzFn());
                    zzd = zzd != null ? zzIy.zzFn().zzm(zzHc).zzl(zzHd, zzd) : zzIy.zzFn().zzm(zzHc);
                } else {
                    zzd = tsVar.zza(zzHc, vwVar.zzIA());
                }
                xm xmVar = zzd;
                if (xmVar != null) {
                    zza = this.zzcht.zza(zzIy.zzHW(), zzHc, xmVar, zzHd, wgVar, wcVar);
                }
            }
            zza = zzIy.zzHW();
        }
        boolean z = zzIy.zzHU() || qrVar.isEmpty();
        return vwVar.zza(zza, z, this.zzcht.zzIE());
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x00a8 A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0098  */
    private final com.google.android.gms.internal.vw zza(com.google.android.gms.internal.vw r9, com.google.android.gms.internal.qr r10, com.google.android.gms.internal.xm r11, com.google.android.gms.internal.ts r12, com.google.android.gms.internal.xm r13, com.google.android.gms.internal.wc r14) {
        /*
        r8 = this;
        r0 = r9.zzIy();
        r6 = new com.google.android.gms.internal.wb;
        r6.<init>(r12, r9, r13);
        r12 = r10.isEmpty();
        if (r12 == 0) goto L_0x0033;
    L_0x000f:
        r10 = r8.zzcht;
        r10 = r10.zzIm();
        r10 = com.google.android.gms.internal.xf.zza(r11, r10);
        r11 = r8.zzcht;
        r12 = r9.zzIy();
        r12 = r12.zzHW();
        r10 = r11.zza(r12, r10, r14);
        r11 = 1;
    L_0x0028:
        r12 = r8.zzcht;
        r12 = r12.zzIE();
    L_0x002e:
        r9 = r9.zza(r10, r11, r12);
        return r9;
    L_0x0033:
        r3 = r10.zzHc();
        r12 = r3.zzIN();
        if (r12 == 0) goto L_0x0054;
    L_0x003d:
        r10 = r8.zzcht;
        r12 = r9.zzIy();
        r12 = r12.zzHW();
        r10 = r10.zza(r12, r11);
        r11 = r0.zzHU();
        r12 = r0.zzHV();
        goto L_0x002e;
    L_0x0054:
        r5 = r10.zzHd();
        r10 = r0.zzFn();
        r10 = r10.zzm(r3);
        r12 = r5.isEmpty();
        if (r12 == 0) goto L_0x0068;
    L_0x0066:
        r4 = r11;
        goto L_0x0092;
    L_0x0068:
        r12 = r6.zzh(r3);
        if (r12 == 0) goto L_0x008d;
    L_0x006e:
        r13 = r5.zzHf();
        r13 = r13.zzIN();
        if (r13 == 0) goto L_0x0088;
    L_0x0078:
        r13 = r5.zzHe();
        r13 = r12.zzN(r13);
        r13 = r13.isEmpty();
        if (r13 == 0) goto L_0x0088;
    L_0x0086:
        r4 = r12;
        goto L_0x0092;
    L_0x0088:
        r11 = r12.zzl(r5, r11);
        goto L_0x0066;
    L_0x008d:
        r11 = com.google.android.gms.internal.xd.zzJb();
        goto L_0x0066;
    L_0x0092:
        r10 = r10.equals(r4);
        if (r10 != 0) goto L_0x00a8;
    L_0x0098:
        r1 = r8.zzcht;
        r2 = r0.zzHW();
        r7 = r14;
        r10 = r1.zza(r2, r3, r4, r5, r6, r7);
        r11 = r0.zzHU();
        goto L_0x0028;
    L_0x00a8:
        return r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vx.zza(com.google.android.gms.internal.vw, com.google.android.gms.internal.qr, com.google.android.gms.internal.xm, com.google.android.gms.internal.ts, com.google.android.gms.internal.xm, com.google.android.gms.internal.wc):com.google.android.gms.internal.vw");
    }

    private final vw zza(vw vwVar, qr qrVar, xm xmVar, ts tsVar, xm xmVar2, boolean z, wc wcVar) {
        xf zzHW;
        xf zza;
        qr qrVar2;
        vw zzb;
        ts tsVar2;
        vw vwVar2 = vwVar;
        xm xmVar3 = xmVar;
        vg zzIA = vwVar2.zzIA();
        wf zzID = z ? this.zzcht : this.zzcht.zzID();
        boolean z2 = true;
        if (qrVar.isEmpty()) {
            zzHW = zzIA.zzHW();
            zza = xf.zza(xmVar3, zzID.zzIm());
        } else if (!zzID.zzIE() || zzIA.zzHV()) {
            wp zzHc = qrVar.zzHc();
            qrVar2 = qrVar;
            if (!zzIA.zzL(qrVar2) && qrVar.size() > 1) {
                return vwVar2;
            }
            qr zzHd = qrVar.zzHd();
            xm zzl = zzIA.zzFn().zzm(zzHc).zzl(zzHd, xmVar3);
            zza = zzHc.zzIN() ? zzID.zza(zzIA.zzHW(), zzl) : zzID.zza(zzIA.zzHW(), zzHc, zzl, zzHd, zzchu, null);
            if (!(zzIA.zzHU() || qrVar.isEmpty())) {
                z2 = false;
            }
            zzb = vwVar2.zzb(zza, z2, zzID.zzIE());
            tsVar2 = tsVar;
            return zza(zzb, qrVar2, tsVar2, new wb(tsVar2, zzb, xmVar2), wcVar);
        } else {
            wp zzHc2 = qrVar.zzHc();
            zza = zzIA.zzHW().zzg(zzHc2, zzIA.zzFn().zzm(zzHc2).zzl(qrVar.zzHd(), xmVar3));
            zzHW = zzIA.zzHW();
        }
        zza = zzID.zza(zzHW, zza, null);
        qrVar2 = qrVar;
        z2 = false;
        zzb = vwVar2.zzb(zza, z2, zzID.zzIE());
        tsVar2 = tsVar;
        return zza(zzb, qrVar2, tsVar2, new wb(tsVar2, zzb, xmVar2), wcVar);
    }

    private static boolean zza(vw vwVar, wp wpVar) {
        return vwVar.zzIy().zzf(wpVar);
    }

    /* JADX WARNING: Missing block: B:61:0x01c0, code skipped:
            if (r0.zzIQ() == false) goto L_0x01f2;
     */
    /* JADX WARNING: Missing block: B:112:0x0321, code skipped:
            r1 = new java.util.ArrayList(r10.zzIC());
            r2 = r0.zzIy();
     */
    /* JADX WARNING: Missing block: B:113:0x0332, code skipped:
            if (r2.zzHU() == false) goto L_0x038b;
     */
    /* JADX WARNING: Missing block: B:115:0x033c, code skipped:
            if (r2.zzFn().zzIQ() != false) goto L_0x034a;
     */
    /* JADX WARNING: Missing block: B:117:0x0346, code skipped:
            if (r2.zzFn().isEmpty() == false) goto L_0x0349;
     */
    /* JADX WARNING: Missing block: B:118:0x0349, code skipped:
            r11 = null;
     */
    /* JADX WARNING: Missing block: B:120:0x034e, code skipped:
            if (r1.isEmpty() == false) goto L_0x0380;
     */
    /* JADX WARNING: Missing block: B:122:0x0358, code skipped:
            if (r18.zzIy().zzHU() == false) goto L_0x0380;
     */
    /* JADX WARNING: Missing block: B:123:0x035a, code skipped:
            if (r11 == null) goto L_0x036a;
     */
    /* JADX WARNING: Missing block: B:125:0x0368, code skipped:
            if (r2.zzFn().equals(r18.zzIz()) == false) goto L_0x0380;
     */
    /* JADX WARNING: Missing block: B:127:0x037e, code skipped:
            if (r2.zzFn().zzIR().equals(r18.zzIz().zzIR()) != false) goto L_0x038b;
     */
    /* JADX WARNING: Missing block: B:128:0x0380, code skipped:
            r1.add(com.google.android.gms.internal.vi.zza(r2.zzHW()));
     */
    /* JADX WARNING: Missing block: B:130:0x0390, code skipped:
            return new com.google.android.gms.internal.wa(r0, r1);
     */
    public final com.google.android.gms.internal.wa zza(com.google.android.gms.internal.vw r18, com.google.android.gms.internal.tx r19, com.google.android.gms.internal.ts r20, com.google.android.gms.internal.xm r21) {
        /*
        r17 = this;
        r8 = r17;
        r9 = r18;
        r7 = r20;
        r10 = new com.google.android.gms.internal.wc;
        r10.<init>();
        r1 = com.google.android.gms.internal.vz.zzchv;
        r2 = r19.zzHF();
        r2 = r2.ordinal();
        r1 = r1[r2];
        r11 = 1;
        r12 = 0;
        switch(r1) {
            case 1: goto L_0x02cc;
            case 2: goto L_0x0216;
            case 3: goto L_0x0074;
            case 4: goto L_0x0045;
            default: goto L_0x001c;
        };
    L_0x001c:
        r1 = new java.lang.AssertionError;
        r0 = r19.zzHF();
        r0 = java.lang.String.valueOf(r0);
        r2 = java.lang.String.valueOf(r0);
        r2 = r2.length();
        r2 = r2 + 19;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r2);
        r2 = "Unknown operation: ";
        r3.append(r2);
        r3.append(r0);
        r0 = r3.toString();
        r1.<init>(r0);
        throw r1;
    L_0x0045:
        r2 = r19.zzFq();
        r0 = r18.zzIA();
        r1 = r0.zzHW();
        r3 = r0.zzHU();
        if (r3 != 0) goto L_0x0060;
    L_0x0057:
        r3 = r2.isEmpty();
        if (r3 == 0) goto L_0x005e;
    L_0x005d:
        goto L_0x0060;
    L_0x005e:
        r3 = 0;
        goto L_0x0061;
    L_0x0060:
        r3 = 1;
    L_0x0061:
        r0 = r0.zzHV();
        r1 = r9.zzb(r1, r3, r0);
        r4 = zzchu;
        r0 = r8;
        r3 = r7;
        r5 = r10;
        r0 = r0.zza(r1, r2, r3, r4, r5);
        goto L_0x0321;
    L_0x0074:
        r0 = r19;
        r0 = (com.google.android.gms.internal.tu) r0;
        r1 = r0.zzHC();
        if (r1 != 0) goto L_0x0127;
    L_0x007e:
        r2 = r0.zzFq();
        r0 = r0.zzHB();
        r1 = r7.zzu(r2);
        if (r1 == 0) goto L_0x008d;
    L_0x008c:
        goto L_0x00ec;
    L_0x008d:
        r1 = r18.zzIA();
        r6 = r1.zzHV();
        r1 = r18.zzIA();
        r3 = r0.getValue();
        if (r3 == 0) goto L_0x00ef;
    L_0x009f:
        r0 = r2.isEmpty();
        if (r0 == 0) goto L_0x00ab;
    L_0x00a5:
        r0 = r1.zzHU();
        if (r0 != 0) goto L_0x00b1;
    L_0x00ab:
        r0 = r1.zzL(r2);
        if (r0 == 0) goto L_0x00c0;
    L_0x00b1:
        r0 = r1.zzFn();
        r3 = r0.zzN(r2);
        r0 = r8;
        r1 = r9;
        r4 = r7;
        r5 = r21;
        goto L_0x031c;
    L_0x00c0:
        r0 = r2.isEmpty();
        if (r0 == 0) goto L_0x00ec;
    L_0x00c6:
        r0 = com.google.android.gms.internal.pz.zzGI();
        r1 = r1.zzFn();
        r1 = r1.iterator();
        r3 = r0;
    L_0x00d3:
        r0 = r1.hasNext();
        if (r0 == 0) goto L_0x0120;
    L_0x00d9:
        r0 = r1.next();
        r0 = (com.google.android.gms.internal.xl) r0;
        r4 = r0.zzJk();
        r0 = r0.zzFn();
        r3 = r3.zza(r4, r0);
        goto L_0x00d3;
    L_0x00ec:
        r0 = r9;
        goto L_0x0321;
    L_0x00ef:
        r3 = com.google.android.gms.internal.pz.zzGI();
        r0 = r0.iterator();
    L_0x00f7:
        r4 = r0.hasNext();
        if (r4 == 0) goto L_0x0120;
    L_0x00fd:
        r4 = r0.next();
        r4 = (java.util.Map.Entry) r4;
        r4 = r4.getKey();
        r4 = (com.google.android.gms.internal.qr) r4;
        r5 = r2.zzh(r4);
        r13 = r1.zzL(r5);
        if (r13 == 0) goto L_0x00f7;
    L_0x0113:
        r13 = r1.zzFn();
        r5 = r13.zzN(r5);
        r3 = r3.zze(r4, r5);
        goto L_0x00f7;
    L_0x0120:
        r0 = r8;
        r1 = r9;
        r4 = r7;
        r5 = r21;
        goto L_0x02c6;
    L_0x0127:
        r0 = r0.zzFq();
        r1 = r7.zzu(r0);
        if (r1 == 0) goto L_0x0132;
    L_0x0131:
        goto L_0x00ec;
    L_0x0132:
        r5 = new com.google.android.gms.internal.wb;
        r13 = r21;
        r5.<init>(r7, r9, r13);
        r1 = r18.zzIy();
        r1 = r1.zzHW();
        r2 = r0.isEmpty();
        if (r2 != 0) goto L_0x01c3;
    L_0x0147:
        r2 = r0.zzHc();
        r2 = r2.zzIN();
        if (r2 == 0) goto L_0x0153;
    L_0x0151:
        goto L_0x01c3;
    L_0x0153:
        r2 = r0.zzHc();
        r3 = r18.zzIA();
        r3 = r7.zza(r2, r3);
        if (r3 != 0) goto L_0x0173;
    L_0x0161:
        r4 = r18.zzIA();
        r4 = r4.zzf(r2);
        if (r4 == 0) goto L_0x0173;
    L_0x016b:
        r3 = r1.zzFn();
        r3 = r3.zzm(r2);
    L_0x0173:
        if (r3 == 0) goto L_0x0183;
    L_0x0175:
        r4 = r8.zzcht;
        r6 = r0.zzHd();
        r0 = r4;
    L_0x017c:
        r4 = r6;
        r6 = r10;
        r1 = r0.zza(r1, r2, r3, r4, r5, r6);
        goto L_0x01a0;
    L_0x0183:
        if (r3 != 0) goto L_0x01a0;
    L_0x0185:
        r3 = r18.zzIy();
        r3 = r3.zzFn();
        r3 = r3.zzk(r2);
        if (r3 == 0) goto L_0x01a0;
    L_0x0193:
        r3 = r8.zzcht;
        r4 = com.google.android.gms.internal.xd.zzJb();
        r6 = r0.zzHd();
        r0 = r3;
        r3 = r4;
        goto L_0x017c;
    L_0x01a0:
        r0 = r1.zzFn();
        r0 = r0.isEmpty();
        if (r0 == 0) goto L_0x01f2;
    L_0x01aa:
        r0 = r18.zzIA();
        r0 = r0.zzHU();
        if (r0 == 0) goto L_0x01f2;
    L_0x01b4:
        r0 = r18.zzIB();
        r0 = r7.zzc(r0);
        r2 = r0.zzIQ();
        if (r2 == 0) goto L_0x01f2;
    L_0x01c2:
        goto L_0x01e2;
    L_0x01c3:
        r0 = r18.zzIA();
        r0 = r0.zzHU();
        if (r0 == 0) goto L_0x01d6;
    L_0x01cd:
        r0 = r18.zzIB();
        r0 = r7.zzc(r0);
        goto L_0x01e2;
    L_0x01d6:
        r0 = r18.zzIA();
        r0 = r0.zzFn();
        r0 = r7.zzd(r0);
    L_0x01e2:
        r2 = r8.zzcht;
        r2 = r2.zzIm();
        r0 = com.google.android.gms.internal.xf.zza(r0, r2);
        r2 = r8.zzcht;
        r1 = r2.zza(r1, r0, r10);
    L_0x01f2:
        r0 = r18.zzIA();
        r0 = r0.zzHU();
        if (r0 != 0) goto L_0x0209;
    L_0x01fc:
        r0 = com.google.android.gms.internal.qr.zzGZ();
        r0 = r7.zzu(r0);
        if (r0 == 0) goto L_0x0207;
    L_0x0206:
        goto L_0x0209;
    L_0x0207:
        r0 = 0;
        goto L_0x020a;
    L_0x0209:
        r0 = 1;
    L_0x020a:
        r2 = r8.zzcht;
        r2 = r2.zzIE();
        r0 = r9.zza(r1, r0, r2);
        goto L_0x0321;
    L_0x0216:
        r13 = r21;
        r0 = r19;
        r0 = (com.google.android.gms.internal.tw) r0;
        r1 = r0.zzHE();
        r1 = r1.zzHG();
        if (r1 == 0) goto L_0x02a2;
    L_0x0226:
        r14 = r0.zzFq();
        r15 = r0.zzHD();
        r6 = r15.iterator();
        r1 = r9;
    L_0x0233:
        r0 = r6.hasNext();
        if (r0 == 0) goto L_0x026b;
    L_0x0239:
        r0 = r6.next();
        r0 = (java.util.Map.Entry) r0;
        r2 = r0.getKey();
        r2 = (com.google.android.gms.internal.qr) r2;
        r2 = r14.zzh(r2);
        r3 = r2.zzHc();
        r3 = zza(r9, r3);
        if (r3 == 0) goto L_0x0266;
    L_0x0253:
        r0 = r0.getValue();
        r3 = r0;
        r3 = (com.google.android.gms.internal.xm) r3;
        r0 = r8;
        r4 = r7;
        r5 = r13;
        r16 = r6;
        r6 = r10;
        r0 = r0.zza(r1, r2, r3, r4, r5, r6);
        r1 = r0;
        goto L_0x0268;
    L_0x0266:
        r16 = r6;
    L_0x0268:
        r6 = r16;
        goto L_0x0233;
    L_0x026b:
        r15 = r15.iterator();
    L_0x026f:
        r0 = r15.hasNext();
        if (r0 == 0) goto L_0x029f;
    L_0x0275:
        r0 = r15.next();
        r0 = (java.util.Map.Entry) r0;
        r2 = r0.getKey();
        r2 = (com.google.android.gms.internal.qr) r2;
        r2 = r14.zzh(r2);
        r3 = r2.zzHc();
        r3 = zza(r9, r3);
        if (r3 != 0) goto L_0x026f;
    L_0x028f:
        r0 = r0.getValue();
        r3 = r0;
        r3 = (com.google.android.gms.internal.xm) r3;
        r0 = r8;
        r4 = r7;
        r5 = r13;
        r6 = r10;
        r1 = r0.zza(r1, r2, r3, r4, r5, r6);
        goto L_0x026f;
    L_0x029f:
        r0 = r1;
        goto L_0x0321;
    L_0x02a2:
        r1 = r0.zzHE();
        r1 = r1.zzHH();
        if (r1 != 0) goto L_0x02b9;
    L_0x02ac:
        r1 = r18.zzIA();
        r1 = r1.zzHV();
        if (r1 == 0) goto L_0x02b7;
    L_0x02b6:
        goto L_0x02b9;
    L_0x02b7:
        r6 = 0;
        goto L_0x02ba;
    L_0x02b9:
        r6 = 1;
    L_0x02ba:
        r2 = r0.zzFq();
        r3 = r0.zzHD();
        r0 = r8;
        r1 = r9;
        r4 = r7;
        r5 = r13;
    L_0x02c6:
        r7 = r10;
        r0 = r0.zza(r1, r2, r3, r4, r5, r6, r7);
        goto L_0x0321;
    L_0x02cc:
        r13 = r21;
        r0 = r19;
        r0 = (com.google.android.gms.internal.ub) r0;
        r1 = r0.zzHE();
        r1 = r1.zzHG();
        if (r1 == 0) goto L_0x02ee;
    L_0x02dc:
        r2 = r0.zzFq();
        r3 = r0.zzHJ();
        r0 = r8;
        r1 = r9;
        r4 = r7;
        r5 = r13;
        r6 = r10;
        r0 = r0.zza(r1, r2, r3, r4, r5, r6);
        goto L_0x0321;
    L_0x02ee:
        r1 = r0.zzHE();
        r1 = r1.zzHH();
        if (r1 != 0) goto L_0x030f;
    L_0x02f8:
        r1 = r18.zzIA();
        r1 = r1.zzHV();
        if (r1 == 0) goto L_0x030d;
    L_0x0302:
        r1 = r0.zzFq();
        r1 = r1.isEmpty();
        if (r1 != 0) goto L_0x030d;
    L_0x030c:
        goto L_0x030f;
    L_0x030d:
        r6 = 0;
        goto L_0x0310;
    L_0x030f:
        r6 = 1;
    L_0x0310:
        r2 = r0.zzFq();
        r3 = r0.zzHJ();
        r0 = r8;
        r1 = r9;
        r4 = r7;
        r5 = r13;
    L_0x031c:
        r7 = r10;
        r0 = r0.zza(r1, r2, r3, r4, r5, r6, r7);
    L_0x0321:
        r1 = new java.util.ArrayList;
        r2 = r10.zzIC();
        r1.<init>(r2);
        r2 = r0.zzIy();
        r3 = r2.zzHU();
        if (r3 == 0) goto L_0x038b;
    L_0x0334:
        r3 = r2.zzFn();
        r3 = r3.zzIQ();
        if (r3 != 0) goto L_0x034a;
    L_0x033e:
        r3 = r2.zzFn();
        r3 = r3.isEmpty();
        if (r3 == 0) goto L_0x0349;
    L_0x0348:
        goto L_0x034a;
    L_0x0349:
        r11 = 0;
    L_0x034a:
        r3 = r1.isEmpty();
        if (r3 == 0) goto L_0x0380;
    L_0x0350:
        r3 = r18.zzIy();
        r3 = r3.zzHU();
        if (r3 == 0) goto L_0x0380;
    L_0x035a:
        if (r11 == 0) goto L_0x036a;
    L_0x035c:
        r3 = r2.zzFn();
        r4 = r18.zzIz();
        r3 = r3.equals(r4);
        if (r3 == 0) goto L_0x0380;
    L_0x036a:
        r3 = r2.zzFn();
        r3 = r3.zzIR();
        r4 = r18.zzIz();
        r4 = r4.zzIR();
        r3 = r3.equals(r4);
        if (r3 != 0) goto L_0x038b;
    L_0x0380:
        r2 = r2.zzHW();
        r2 = com.google.android.gms.internal.vi.zza(r2);
        r1.add(r2);
    L_0x038b:
        r2 = new com.google.android.gms.internal.wa;
        r2.<init>(r0, r1);
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vx.zza(com.google.android.gms.internal.vw, com.google.android.gms.internal.tx, com.google.android.gms.internal.ts, com.google.android.gms.internal.xm):com.google.android.gms.internal.wa");
    }
}
