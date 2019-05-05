package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import org.json.JSONObject;

@zzzn
public final class zzadw extends zzafp implements zzadv {
    private final Context mContext;
    private final Object mLock;
    private final zzafg zzQQ;
    private final long zzWC;
    private final ArrayList<Future> zzWN;
    private final ArrayList<String> zzWO;
    private final HashMap<String, zzadm> zzWP;
    private final List<zzadp> zzWQ;
    private final HashSet<String> zzWR;
    private final zzacs zzWS;

    public zzadw(Context context, zzafg zzafg, zzacs zzacs) {
        Context context2 = context;
        zzafg zzafg2 = zzafg;
        zzacs zzacs2 = zzacs;
        this(context2, zzafg2, zzacs2, ((Long) zzbs.zzbL().zzd(zzmo.zzDI)).longValue());
    }

    private zzadw(Context context, zzafg zzafg, zzacs zzacs, long j) {
        this.zzWN = new ArrayList();
        this.zzWO = new ArrayList();
        this.zzWP = new HashMap();
        this.zzWQ = new ArrayList();
        this.zzWR = new HashSet();
        this.mLock = new Object();
        this.mContext = context;
        this.zzQQ = zzafg;
        this.zzWS = zzacs;
        this.zzWC = j;
    }

    private final zzaff zza(int i, @Nullable String str, @Nullable zzua zzua) {
        zzir zzir = this.zzQQ.zzUj.zzSz;
        List list = this.zzQQ.zzXY.zzMa;
        List list2 = this.zzQQ.zzXY.zzMb;
        List list3 = this.zzQQ.zzXY.zzTq;
        int i2 = this.zzQQ.zzXY.orientation;
        long j = this.zzQQ.zzXY.zzMg;
        String str2 = this.zzQQ.zzUj.zzSC;
        boolean z = this.zzQQ.zzXY.zzTo;
        zzub zzub = this.zzQQ.zzXN;
        long j2 = this.zzQQ.zzXY.zzTp;
        zziv zziv = this.zzQQ.zzvX;
        long j3 = j2;
        zzub zzub2 = zzub;
        long j4 = this.zzQQ.zzXY.zzTn;
        long j5 = this.zzQQ.zzXR;
        long j6 = this.zzQQ.zzXY.zzTs;
        String str3 = this.zzQQ.zzXY.zzTt;
        JSONObject jSONObject = this.zzQQ.zzXL;
        zzaee zzaee = this.zzQQ.zzXY.zzTD;
        List list4 = this.zzQQ.zzXY.zzTE;
        List list5 = this.zzQQ.zzXY.zzTF;
        boolean z2 = this.zzQQ.zzXY.zzTG;
        zzaak zzaak = this.zzQQ.zzXY.zzTH;
        String zzgV = zzgV();
        zzaak zzaak2 = zzaak;
        List list6 = this.zzQQ.zzXY.zzMd;
        JSONObject jSONObject2 = jSONObject;
        zziv zziv2 = zziv;
        String str4 = str3;
        long j7 = j3;
        j3 = j6;
        return new zzaff(zzir, null, list, i, list2, list3, i2, j, str2, z, zzua, null, str, zzub2, null, j7, zziv2, j4, j5, j3, str4, jSONObject2, null, zzaee, list4, list5, z2, zzaak2, zzgV, list6, this.zzQQ.zzXY.zzTK, this.zzQQ.zzXX);
    }

    private final String zzgV() {
        StringBuilder stringBuilder = new StringBuilder("");
        if (this.zzWQ == null) {
            return stringBuilder.toString();
        }
        Iterator it = this.zzWQ.iterator();
        while (true) {
            int i = 1;
            if (!it.hasNext()) {
                return stringBuilder.substring(0, Math.max(0, stringBuilder.length() - 1));
            }
            zzadp zzadp = (zzadp) it.next();
            if (!(zzadp == null || TextUtils.isEmpty(zzadp.zzLK))) {
                String str = zzadp.zzLK;
                switch (zzadp.errorCode) {
                    case 3:
                        break;
                    case 4:
                        i = 2;
                        break;
                    case 5:
                        i = 4;
                        break;
                    case 6:
                        i = 0;
                        break;
                    case 7:
                        i = 3;
                        break;
                    default:
                        i = 6;
                        break;
                }
                long j = zzadp.zzML;
                StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(str).length() + 33);
                stringBuilder2.append(str);
                stringBuilder2.append(".");
                stringBuilder2.append(i);
                stringBuilder2.append(".");
                stringBuilder2.append(j);
                stringBuilder.append(String.valueOf(stringBuilder2.toString()).concat("_"));
            }
        }
    }

    public final void onStop() {
    }

    public final void zza(String str, int i) {
    }

    public final void zzaw(String str) {
        synchronized (this.mLock) {
            this.zzWR.add(str);
        }
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:95:0x0194 */
    public final void zzbd() {
        /*
        r21 = this;
        r11 = r21;
        r1 = r11.zzQQ;
        r1 = r1.zzXN;
        r1 = r1.zzLY;
        r12 = r1.iterator();
    L_0x000c:
        r1 = r12.hasNext();
        if (r1 == 0) goto L_0x00db;
    L_0x0012:
        r1 = r12.next();
        r13 = r1;
        r13 = (com.google.android.gms.internal.zzua) r13;
        r14 = r13.zzLP;
        r1 = r13.zzLJ;
        r15 = r1.iterator();
    L_0x0021:
        r1 = r15.hasNext();
        if (r1 == 0) goto L_0x000c;
    L_0x0027:
        r1 = r15.next();
        r1 = (java.lang.String) r1;
        r2 = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter";
        r2 = r2.equals(r1);
        if (r2 != 0) goto L_0x0040;
    L_0x0035:
        r2 = "com.google.ads.mediation.customevent.CustomEventAdapter";
        r2 = r2.equals(r1);
        if (r2 == 0) goto L_0x003e;
    L_0x003d:
        goto L_0x0040;
    L_0x003e:
        r9 = r1;
        goto L_0x004c;
    L_0x0040:
        r1 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x00ca }
        r1.<init>(r14);	 Catch:{ JSONException -> 0x00ca }
        r2 = "class_name";
        r1 = r1.getString(r2);	 Catch:{ JSONException -> 0x00ca }
        goto L_0x003e;
    L_0x004c:
        r10 = r11.mLock;
        monitor-enter(r10);
        r1 = r11.zzWS;	 Catch:{ all -> 0x00c2 }
        r7 = r1.zzav(r9);	 Catch:{ all -> 0x00c2 }
        if (r7 == 0) goto L_0x0097;
    L_0x0057:
        r1 = r7.zzgX();	 Catch:{ all -> 0x00c2 }
        if (r1 == 0) goto L_0x0097;
    L_0x005d:
        r1 = r7.zzgW();	 Catch:{ all -> 0x00c2 }
        if (r1 != 0) goto L_0x0064;
    L_0x0063:
        goto L_0x0097;
    L_0x0064:
        r8 = new com.google.android.gms.internal.zzadm;	 Catch:{ all -> 0x00c2 }
        r2 = r11.mContext;	 Catch:{ all -> 0x00c2 }
        r6 = r11.zzQQ;	 Catch:{ all -> 0x00c2 }
        r4 = r11.zzWC;	 Catch:{ all -> 0x00c2 }
        r1 = r8;
        r3 = r9;
        r16 = r4;
        r4 = r14;
        r5 = r13;
        r18 = r12;
        r12 = r8;
        r8 = r11;
        r20 = r10;
        r19 = r14;
        r14 = r9;
        r9 = r16;
        r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9);	 Catch:{ all -> 0x00c8 }
        r1 = r11.zzWN;	 Catch:{ all -> 0x00c8 }
        r2 = r12.zzgp();	 Catch:{ all -> 0x00c8 }
        r2 = (java.util.concurrent.Future) r2;	 Catch:{ all -> 0x00c8 }
        r1.add(r2);	 Catch:{ all -> 0x00c8 }
        r1 = r11.zzWO;	 Catch:{ all -> 0x00c8 }
        r1.add(r14);	 Catch:{ all -> 0x00c8 }
        r1 = r11.zzWP;	 Catch:{ all -> 0x00c8 }
        r1.put(r14, r12);	 Catch:{ all -> 0x00c8 }
    L_0x0095:
        monitor-exit(r20);	 Catch:{ all -> 0x00c8 }
        goto L_0x00d5;
    L_0x0097:
        r20 = r10;
        r18 = r12;
        r19 = r14;
        r14 = r9;
        r1 = r11.zzWQ;	 Catch:{ all -> 0x00c8 }
        r2 = new com.google.android.gms.internal.zzadr;	 Catch:{ all -> 0x00c8 }
        r2.<init>();	 Catch:{ all -> 0x00c8 }
        r3 = r13.zzLK;	 Catch:{ all -> 0x00c8 }
        r2 = r2.zzay(r3);	 Catch:{ all -> 0x00c8 }
        r2 = r2.zzax(r14);	 Catch:{ all -> 0x00c8 }
        r3 = 0;
        r2 = r2.zzg(r3);	 Catch:{ all -> 0x00c8 }
        r3 = 7;
        r2 = r2.zzw(r3);	 Catch:{ all -> 0x00c8 }
        r2 = r2.zzgU();	 Catch:{ all -> 0x00c8 }
        r1.add(r2);	 Catch:{ all -> 0x00c8 }
        goto L_0x0095;
    L_0x00c2:
        r0 = move-exception;
        r20 = r10;
    L_0x00c5:
        r1 = r0;
        monitor-exit(r20);	 Catch:{ all -> 0x00c8 }
        throw r1;
    L_0x00c8:
        r0 = move-exception;
        goto L_0x00c5;
    L_0x00ca:
        r0 = move-exception;
        r18 = r12;
        r19 = r14;
        r1 = r0;
        r2 = "Unable to determine custom event class name, skipping...";
        com.google.android.gms.internal.zzajc.zzb(r2, r1);
    L_0x00d5:
        r12 = r18;
        r14 = r19;
        goto L_0x0021;
    L_0x00db:
        r1 = 0;
    L_0x00dc:
        r2 = r11.zzWN;
        r2 = r2.size();
        r3 = 0;
        if (r1 >= r2) goto L_0x01ef;
    L_0x00e5:
        r2 = r11.zzWN;	 Catch:{ InterruptedException -> 0x0194, Exception -> 0x0160 }
        r2 = r2.get(r1);	 Catch:{ InterruptedException -> 0x0194, Exception -> 0x0160 }
        r2 = (java.util.concurrent.Future) r2;	 Catch:{ InterruptedException -> 0x0194, Exception -> 0x0160 }
        r2.get();	 Catch:{ InterruptedException -> 0x0194, Exception -> 0x0160 }
        r2 = r11.mLock;
        monitor-enter(r2);
        r4 = r11.zzWO;	 Catch:{ all -> 0x0159 }
        r4 = r4.get(r1);	 Catch:{ all -> 0x0159 }
        r4 = (java.lang.String) r4;	 Catch:{ all -> 0x0159 }
        r5 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x0159 }
        if (r5 != 0) goto L_0x0114;
    L_0x0101:
        r5 = r11.zzWP;	 Catch:{ all -> 0x0159 }
        r4 = r5.get(r4);	 Catch:{ all -> 0x0159 }
        r4 = (com.google.android.gms.internal.zzadm) r4;	 Catch:{ all -> 0x0159 }
        if (r4 == 0) goto L_0x0114;
    L_0x010b:
        r5 = r11.zzWQ;	 Catch:{ all -> 0x0159 }
        r4 = r4.zzgR();	 Catch:{ all -> 0x0159 }
        r5.add(r4);	 Catch:{ all -> 0x0159 }
    L_0x0114:
        monitor-exit(r2);	 Catch:{ all -> 0x0159 }
        r4 = r11.mLock;
        monitor-enter(r4);
        r2 = r11.zzWR;	 Catch:{ all -> 0x0155 }
        r5 = r11.zzWO;	 Catch:{ all -> 0x0155 }
        r5 = r5.get(r1);	 Catch:{ all -> 0x0155 }
        r2 = r2.contains(r5);	 Catch:{ all -> 0x0155 }
        if (r2 == 0) goto L_0x0153;
    L_0x0126:
        r2 = r11.zzWO;	 Catch:{ all -> 0x0155 }
        r1 = r2.get(r1);	 Catch:{ all -> 0x0155 }
        r1 = (java.lang.String) r1;	 Catch:{ all -> 0x0155 }
        r2 = r11.zzWP;	 Catch:{ all -> 0x0155 }
        r2 = r2.get(r1);	 Catch:{ all -> 0x0155 }
        if (r2 == 0) goto L_0x0142;
    L_0x0136:
        r2 = r11.zzWP;	 Catch:{ all -> 0x0155 }
        r2 = r2.get(r1);	 Catch:{ all -> 0x0155 }
        r2 = (com.google.android.gms.internal.zzadm) r2;	 Catch:{ all -> 0x0155 }
        r3 = r2.zzgS();	 Catch:{ all -> 0x0155 }
    L_0x0142:
        r2 = -2;
        r1 = r11.zza(r2, r1, r3);	 Catch:{ all -> 0x0155 }
        r2 = com.google.android.gms.internal.zzaiy.zzaaH;	 Catch:{ all -> 0x0155 }
        r3 = new com.google.android.gms.internal.zzadx;	 Catch:{ all -> 0x0155 }
        r3.<init>(r11, r1);	 Catch:{ all -> 0x0155 }
        r2.post(r3);	 Catch:{ all -> 0x0155 }
        monitor-exit(r4);	 Catch:{ all -> 0x0155 }
        return;
    L_0x0153:
        monitor-exit(r4);	 Catch:{ all -> 0x0155 }
        goto L_0x018c;
    L_0x0155:
        r0 = move-exception;
        r1 = r0;
        monitor-exit(r4);	 Catch:{ all -> 0x0155 }
        throw r1;
    L_0x0159:
        r0 = move-exception;
        r1 = r0;
        monitor-exit(r2);	 Catch:{ all -> 0x0159 }
        throw r1;
    L_0x015d:
        r0 = move-exception;
        r2 = r0;
        goto L_0x01c5;
    L_0x0160:
        r0 = move-exception;
        r2 = r0;
        r3 = "Unable to resolve rewarded adapter.";
        com.google.android.gms.internal.zzajc.zzc(r3, r2);	 Catch:{ all -> 0x015d }
        r2 = r11.mLock;
        monitor-enter(r2);
        r3 = r11.zzWO;	 Catch:{ all -> 0x0190 }
        r3 = r3.get(r1);	 Catch:{ all -> 0x0190 }
        r3 = (java.lang.String) r3;	 Catch:{ all -> 0x0190 }
        r4 = android.text.TextUtils.isEmpty(r3);	 Catch:{ all -> 0x0190 }
        if (r4 != 0) goto L_0x018b;
    L_0x0178:
        r4 = r11.zzWP;	 Catch:{ all -> 0x0190 }
        r3 = r4.get(r3);	 Catch:{ all -> 0x0190 }
        r3 = (com.google.android.gms.internal.zzadm) r3;	 Catch:{ all -> 0x0190 }
        if (r3 == 0) goto L_0x018b;
    L_0x0182:
        r4 = r11.zzWQ;	 Catch:{ all -> 0x0190 }
        r3 = r3.zzgR();	 Catch:{ all -> 0x0190 }
        r4.add(r3);	 Catch:{ all -> 0x0190 }
    L_0x018b:
        monitor-exit(r2);	 Catch:{ all -> 0x0190 }
    L_0x018c:
        r1 = r1 + 1;
        goto L_0x00dc;
    L_0x0190:
        r0 = move-exception;
        r1 = r0;
        monitor-exit(r2);	 Catch:{ all -> 0x0190 }
        throw r1;
    L_0x0194:
        r2 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x015d }
        r2.interrupt();	 Catch:{ all -> 0x015d }
        r2 = r11.mLock;
        monitor-enter(r2);
        r4 = r11.zzWO;	 Catch:{ all -> 0x01c1 }
        r1 = r4.get(r1);	 Catch:{ all -> 0x01c1 }
        r1 = (java.lang.String) r1;	 Catch:{ all -> 0x01c1 }
        r4 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x01c1 }
        if (r4 != 0) goto L_0x01bf;
    L_0x01ac:
        r4 = r11.zzWP;	 Catch:{ all -> 0x01c1 }
        r1 = r4.get(r1);	 Catch:{ all -> 0x01c1 }
        r1 = (com.google.android.gms.internal.zzadm) r1;	 Catch:{ all -> 0x01c1 }
        if (r1 == 0) goto L_0x01bf;
    L_0x01b6:
        r4 = r11.zzWQ;	 Catch:{ all -> 0x01c1 }
        r1 = r1.zzgR();	 Catch:{ all -> 0x01c1 }
        r4.add(r1);	 Catch:{ all -> 0x01c1 }
    L_0x01bf:
        monitor-exit(r2);	 Catch:{ all -> 0x01c1 }
        goto L_0x01ef;
    L_0x01c1:
        r0 = move-exception;
        r1 = r0;
        monitor-exit(r2);	 Catch:{ all -> 0x01c1 }
        throw r1;
    L_0x01c5:
        r4 = r11.mLock;
        monitor-enter(r4);
        r3 = r11.zzWO;	 Catch:{ all -> 0x01eb }
        r1 = r3.get(r1);	 Catch:{ all -> 0x01eb }
        r1 = (java.lang.String) r1;	 Catch:{ all -> 0x01eb }
        r3 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x01eb }
        if (r3 != 0) goto L_0x01e9;
    L_0x01d6:
        r3 = r11.zzWP;	 Catch:{ all -> 0x01eb }
        r1 = r3.get(r1);	 Catch:{ all -> 0x01eb }
        r1 = (com.google.android.gms.internal.zzadm) r1;	 Catch:{ all -> 0x01eb }
        if (r1 == 0) goto L_0x01e9;
    L_0x01e0:
        r3 = r11.zzWQ;	 Catch:{ all -> 0x01eb }
        r1 = r1.zzgR();	 Catch:{ all -> 0x01eb }
        r3.add(r1);	 Catch:{ all -> 0x01eb }
    L_0x01e9:
        monitor-exit(r4);	 Catch:{ all -> 0x01eb }
        throw r2;
    L_0x01eb:
        r0 = move-exception;
        r1 = r0;
        monitor-exit(r4);	 Catch:{ all -> 0x01eb }
        throw r1;
    L_0x01ef:
        r1 = 3;
        r1 = r11.zza(r1, r3, r3);
        r2 = com.google.android.gms.internal.zzaiy.zzaaH;
        r3 = new com.google.android.gms.internal.zzady;
        r3.<init>(r11, r1);
        r2.post(r3);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzadw.zzbd():void");
    }
}
