package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.DatabaseReference.CompletionListener;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.Transaction;
import com.google.firebase.database.Transaction.Handler;
import com.google.firebase.database.Transaction.Result;
import com.google.firebase.database.zzh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class qu implements oo {
    private final rx zzbYW;
    private final on zzccd;
    private final yz zzcdj = new yz(new yt(), 0);
    private sh zzcdk;
    private si zzcdl;
    private vb<List<rv>> zzcdm;
    private boolean zzcdn = false;
    private final vo zzcdo;
    private final qd zzcdp;
    private final wl zzcdq;
    private final wl zzcdr;
    private final wl zzcds;
    private long zzcdt = 0;
    private long zzcdu = 1;
    private so zzcdv;
    private so zzcdw;
    private FirebaseDatabase zzcdx;
    private boolean zzcdy = false;
    private long zzcdz = 0;

    qu(rx rxVar, qd qdVar, FirebaseDatabase firebaseDatabase) {
        this.zzbYW = rxVar;
        this.zzcdp = qdVar;
        this.zzcdx = firebaseDatabase;
        this.zzcdq = this.zzcdp.zzgP("RepoOperation");
        this.zzcdr = this.zzcdp.zzgP("Transaction");
        this.zzcds = this.zzcdp.zzgP("DataOperation");
        this.zzcdo = new vo(this.zzcdp);
        this.zzccd = qdVar.zza(new ol(rxVar.host, rxVar.zzbxU, rxVar.secure), this);
        zzq(new qv(this));
    }

    private final void zzHg() {
        this.zzcdp.zzccP.zza(new rh(this));
        this.zzccd.initialize();
        uh zzgQ = this.zzcdp.zzgQ(this.zzbYW.host);
        this.zzcdk = new sh();
        this.zzcdl = new si();
        this.zzcdm = new vb();
        this.zzcdv = new so(this.zzcdp, new ug(), new rm(this));
        this.zzcdw = new so(this.zzcdp, zzgQ, new ro(this));
        List<tm> zzFs = zzgQ.zzFs();
        Map zza = se.zza(this.zzcdj);
        long j = Long.MIN_VALUE;
        for (tm tmVar : zzFs) {
            pf rqVar = new rq(this, tmVar);
            if (j >= tmVar.zzHt()) {
                throw new IllegalStateException("Write ids were not in order.");
            }
            j = tmVar.zzHt();
            this.zzcdu = tmVar.zzHt() + 1;
            wl wlVar;
            long zzHt;
            StringBuilder stringBuilder;
            if (tmVar.zzHw()) {
                if (this.zzcdq.zzIH()) {
                    wlVar = this.zzcdq;
                    zzHt = tmVar.zzHt();
                    stringBuilder = new StringBuilder(48);
                    stringBuilder.append("Restoring overwrite with id ");
                    stringBuilder.append(zzHt);
                    wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
                }
                this.zzccd.zza(tmVar.zzFq().zzHb(), tmVar.zzHu().getValue(true), rqVar);
                this.zzcdw.zza(tmVar.zzFq(), tmVar.zzHu(), se.zza(tmVar.zzHu(), zza), tmVar.zzHt(), true, false);
            } else {
                if (this.zzcdq.zzIH()) {
                    wlVar = this.zzcdq;
                    zzHt = tmVar.zzHt();
                    stringBuilder = new StringBuilder(44);
                    stringBuilder.append("Restoring merge with id ");
                    stringBuilder.append(zzHt);
                    wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
                }
                this.zzccd.zza(tmVar.zzFq().zzHb(), tmVar.zzHv().zzaD(true), rqVar);
                this.zzcdw.zza(tmVar.zzFq(), tmVar.zzHv(), se.zza(tmVar.zzHv(), zza), tmVar.zzHt(), false);
            }
        }
        zza(qc.zzccM, Boolean.valueOf(false));
        zza(qc.zzccN, Boolean.valueOf(false));
    }

    private final long zzHk() {
        long j = this.zzcdu;
        this.zzcdu = j + 1;
        return j;
    }

    private final void zzHl() {
        vb vbVar = this.zzcdm;
        zzb(vbVar);
        zza(vbVar);
    }

    private final void zzT(List<? extends vk> list) {
        if (!list.isEmpty()) {
            this.zzcdo.zzV(list);
        }
    }

    private final xm zza(qr qrVar, List<Long> list) {
        xm zzc = this.zzcdw.zzc(qrVar, list);
        return zzc == null ? xd.zzJb() : zzc;
    }

    private final void zza(long j, qr qrVar, DatabaseError databaseError) {
        if (databaseError == null || databaseError.getCode() != -25) {
            List zza = this.zzcdw.zza(j, (databaseError == null ? 1 : 0) ^ 1, true, this.zzcdj);
            if (zza.size() > 0) {
                zzn(qrVar);
            }
            zzT(zza);
        }
    }

    private final void zza(vb<List<rv>> vbVar) {
        if (((List) vbVar.getValue()) != null) {
            List<rv> zzc = zzc((vb) vbVar);
            Boolean valueOf = Boolean.valueOf(true);
            for (rv zzc2 : zzc) {
                if (zzc2.zzceb != rw.zzcek) {
                    valueOf = Boolean.valueOf(false);
                    break;
                }
            }
            if (valueOf.booleanValue()) {
                qr zzFq = vbVar.zzFq();
                List arrayList = new ArrayList();
                for (rv zzc22 : zzc) {
                    arrayList.add(Long.valueOf(zzc22.zzcef));
                }
                xm zza = zza(zzFq, arrayList);
                String zzIP = zza.zzIP();
                for (rv rvVar : zzc) {
                    rvVar.zzceb = rw.zzcel;
                    rvVar.retryCount = rvVar.retryCount + 1;
                    zza = zza.zzl(qr.zza(zzFq, rvVar.zzbZf), rvVar.zzceh);
                }
                this.zzccd.zza(zzFq.zzHb(), zza.getValue(true), zzIP, new rc(this, zzFq, zzc, this));
            }
            return;
        }
        if (vbVar.hasChildren()) {
            vbVar.zza(new rb(this));
        }
    }

    private final void zza(vb<List<rv>> vbVar, int i) {
        vb<List<rv>> vbVar2 = vbVar;
        int i2 = i;
        List list = (List) vbVar.getValue();
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            DatabaseError zzgA;
            ArrayList arrayList2 = new ArrayList();
            if (i2 == -9) {
                zzgA = DatabaseError.zzgA("overriddenBySet");
            } else {
                boolean z = i2 == -25;
                StringBuilder stringBuilder = new StringBuilder(45);
                stringBuilder.append("Unknown transaction abort reason: ");
                stringBuilder.append(i2);
                zd.zzb(z, stringBuilder.toString());
                zzgA = DatabaseError.zzbU(-25);
            }
            int i3 = -1;
            for (int i4 = 0; i4 < list.size(); i4++) {
                rv rvVar = (rv) list.get(i4);
                if (rvVar.zzceb != rw.zzcen) {
                    if (rvVar.zzceb == rw.zzcel) {
                        rvVar.zzceb = rw.zzcen;
                        rvVar.zzcee = zzgA;
                        i3 = i4;
                    } else {
                        zze(new to(this, rvVar.zzcea, vt.zzM(rvVar.zzbZf)));
                        if (i2 == -9) {
                            arrayList.addAll(this.zzcdw.zza(rvVar.zzcef, true, false, (ys) this.zzcdj));
                        } else {
                            boolean z2 = i2 == -25;
                            StringBuilder stringBuilder2 = new StringBuilder(45);
                            stringBuilder2.append("Unknown transaction abort reason: ");
                            stringBuilder2.append(i2);
                            zd.zzb(z2, stringBuilder2.toString());
                        }
                        arrayList2.add(new rl(this, rvVar, zzgA));
                    }
                }
            }
            if (i3 == -1) {
                vbVar2.setValue(null);
                i2 = 0;
            } else {
                i2 = 0;
                vbVar2.setValue(list.subList(0, i3 + 1));
            }
            zzT(arrayList);
            arrayList2 = arrayList2;
            int size = arrayList2.size();
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                zzo((Runnable) obj);
            }
        }
    }

    private final void zza(wp wpVar, Object obj) {
        if (wpVar.equals(qc.zzccL)) {
            this.zzcdj.zzay(((Long) obj).longValue());
        }
        qr qrVar = new qr(qc.zzccK, wpVar);
        try {
            xm zza = xp.zza(obj, xd.zzJb());
            this.zzcdk.zzg(qrVar, zza);
            zzT(this.zzcdv.zzi(qrVar, zza));
        } catch (DatabaseException e) {
            this.zzcdq.zzd("Failed to parse info update", e);
        }
    }

    private final void zza(String str, qr qrVar, DatabaseError databaseError) {
        if (databaseError != null && databaseError.getCode() != -1 && databaseError.getCode() != -25) {
            wl wlVar = this.zzcdq;
            String valueOf = String.valueOf(qrVar.toString());
            String valueOf2 = String.valueOf(databaseError.toString());
            StringBuilder stringBuilder = new StringBuilder(((String.valueOf(str).length() + 13) + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
            stringBuilder.append(str);
            stringBuilder.append(" at ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" failed: ");
            stringBuilder.append(valueOf2);
            wlVar.zze(stringBuilder.toString(), null);
        }
    }

    private final void zza(List<rv> list, vb<List<rv>> vbVar) {
        List list2 = (List) vbVar.getValue();
        if (list2 != null) {
            list.addAll(list2);
        }
        vbVar.zza(new ri(this, list));
    }

    private static DatabaseError zzab(String str, String str2) {
        return str != null ? DatabaseError.zzZ(str, str2) : null;
    }

    private final qr zzb(qr qrVar, int i) {
        qr zzFq = zzo(qrVar).zzFq();
        if (this.zzcdr.zzIH()) {
            wl wlVar = this.zzcdq;
            String valueOf = String.valueOf(qrVar);
            String valueOf2 = String.valueOf(zzFq);
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 44) + String.valueOf(valueOf2).length());
            stringBuilder.append("Aborting transactions for path: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(". Affected: ");
            stringBuilder.append(valueOf2);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        vb zzK = this.zzcdm.zzK(qrVar);
        zzK.zza(new rj(this, i), false);
        zza(zzK, i);
        zzK.zza(new rk(this, i), false, false);
        return zzFq;
    }

    private final void zzb(vb<List<rv>> vbVar) {
        Object obj = (List) vbVar.getValue();
        if (obj != null) {
            int i = 0;
            while (i < obj.size()) {
                if (((rv) obj.get(i)).zzceb == rw.zzcem) {
                    obj.remove(i);
                } else {
                    i++;
                }
            }
            if (obj.size() <= 0) {
                obj = null;
            }
            vbVar.setValue(obj);
        }
        vbVar.zza(new re(this));
    }

    private final List<rv> zzc(vb<List<rv>> vbVar) {
        List arrayList = new ArrayList();
        zza(arrayList, (vb) vbVar);
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x003e A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x013a  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x013a  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x003e A:{SYNTHETIC} */
    /* JADX WARNING: Missing block: B:12:0x006b, code skipped:
            if (r11.getCode() != -25) goto L_0x0084;
     */
    private final com.google.android.gms.internal.qr zzn(com.google.android.gms.internal.qr r23) {
        /*
        r22 = this;
        r1 = r22;
        r2 = r22.zzo(r23);
        r3 = r2.zzFq();
        r2 = r1.zzc(r2);
        r4 = r2.isEmpty();
        if (r4 != 0) goto L_0x017f;
    L_0x0014:
        r4 = new java.util.ArrayList;
        r4.<init>();
        r5 = new java.util.ArrayList;
        r5.<init>();
        r6 = r2.iterator();
    L_0x0022:
        r7 = r6.hasNext();
        if (r7 == 0) goto L_0x003a;
    L_0x0028:
        r7 = r6.next();
        r7 = (com.google.android.gms.internal.rv) r7;
        r7 = r7.zzcef;
        r7 = java.lang.Long.valueOf(r7);
        r5.add(r7);
        goto L_0x0022;
    L_0x003a:
        r2 = r2.iterator();
    L_0x003e:
        r6 = r2.hasNext();
        r7 = 0;
        if (r6 == 0) goto L_0x0165;
    L_0x0045:
        r6 = r2.next();
        r6 = (com.google.android.gms.internal.rv) r6;
        r8 = r6.zzbZf;
        com.google.android.gms.internal.qr.zza(r3, r8);
        r8 = new java.util.ArrayList;
        r8.<init>();
        r9 = r6.zzceb;
        r10 = com.google.android.gms.internal.rw.zzceo;
        r11 = 0;
        r12 = 1;
        if (r9 != r10) goto L_0x006e;
    L_0x0061:
        r11 = r6.zzcee;
        r7 = r11.getCode();
        r9 = -25;
        if (r7 == r9) goto L_0x0135;
    L_0x006d:
        goto L_0x0084;
    L_0x006e:
        r9 = r6.zzceb;
        r10 = com.google.android.gms.internal.rw.zzcek;
        if (r9 != r10) goto L_0x0134;
    L_0x0076:
        r9 = r6.retryCount;
        r10 = 25;
        if (r9 < r10) goto L_0x009b;
    L_0x007e:
        r7 = "maxretries";
        r11 = com.google.firebase.database.DatabaseError.zzgA(r7);
    L_0x0084:
        r13 = r1.zzcdw;
        r14 = r6.zzcef;
        r16 = 1;
        r17 = 0;
        r7 = r1.zzcdj;
        r18 = r7;
        r7 = r13.zza(r14, r16, r17, r18);
        r8.addAll(r7);
        goto L_0x0135;
    L_0x009b:
        r9 = r6.zzbZf;
        r9 = r1.zza(r9, r5);
        r6.zzceg = r9;
        r9 = com.google.firebase.database.zzh.zza(r9);
        r10 = r6.zzcdZ;	 Catch:{ Throwable -> 0x00b4 }
        r9 = r10.doTransaction(r9);	 Catch:{ Throwable -> 0x00b4 }
        r10 = r11;
        goto L_0x00c3;
    L_0x00b4:
        r0 = move-exception;
        r9 = r0;
        r9 = com.google.firebase.database.DatabaseError.fromException(r9);
        r10 = com.google.firebase.database.Transaction.abort();
        r21 = r10;
        r10 = r9;
        r9 = r21;
    L_0x00c3:
        r13 = r9.isSuccess();
        if (r13 == 0) goto L_0x011d;
    L_0x00c9:
        r12 = r6.zzcef;
        r10 = java.lang.Long.valueOf(r12);
        r12 = r1.zzcdj;
        r12 = com.google.android.gms.internal.se.zza(r12);
        r15 = r9.zzFn();
        r9 = com.google.android.gms.internal.se.zza(r15, r12);
        r6.zzceh = r15;
        r6.zzcei = r9;
        r12 = r22.zzHk();
        r6.zzcef = r12;
        r5.remove(r10);
        r13 = r1.zzcdw;
        r14 = r6.zzbZf;
        r17 = r6.zzcef;
        r19 = r6.zzced;
        r20 = 0;
        r16 = r9;
        r9 = r13.zza(r14, r15, r16, r17, r19, r20);
        r8.addAll(r9);
        r12 = r1.zzcdw;
        r13 = r10.longValue();
        r15 = 1;
        r16 = 0;
        r9 = r1.zzcdj;
        r17 = r9;
        r9 = r12.zza(r13, r15, r16, r17);
        r8.addAll(r9);
        goto L_0x0134;
    L_0x011d:
        r13 = r1.zzcdw;
        r14 = r6.zzcef;
        r16 = 1;
        r17 = 0;
        r7 = r1.zzcdj;
        r18 = r7;
        r7 = r13.zza(r14, r16, r17, r18);
        r8.addAll(r7);
        r11 = r10;
        goto L_0x0135;
    L_0x0134:
        r12 = 0;
    L_0x0135:
        r1.zzT(r8);
        if (r12 == 0) goto L_0x003e;
    L_0x013a:
        r7 = com.google.android.gms.internal.rw.zzcem;
        r6.zzceb = r7;
        r7 = r6.zzbZf;
        r7 = com.google.firebase.database.zzh.zza(r1, r7);
        r8 = r6.zzceg;
        r8 = com.google.android.gms.internal.xf.zzj(r8);
        r7 = com.google.firebase.database.zzh.zza(r7, r8);
        r8 = new com.google.android.gms.internal.rf;
        r8.<init>(r1, r6);
        r1.zzq(r8);
        r8 = new com.google.android.gms.internal.rg;
        r8.<init>(r1, r6, r11, r7);
        r4.add(r8);
        goto L_0x003e;
    L_0x0165:
        r2 = r1.zzcdm;
        r1.zzb(r2);
    L_0x016a:
        r2 = r4.size();
        if (r7 >= r2) goto L_0x017c;
    L_0x0170:
        r2 = r4.get(r7);
        r2 = (java.lang.Runnable) r2;
        r1.zzo(r2);
        r7 = r7 + 1;
        goto L_0x016a;
    L_0x017c:
        r22.zzHl();
    L_0x017f:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.qu.zzn(com.google.android.gms.internal.qr):com.google.android.gms.internal.qr");
    }

    private final vb<List<rv>> zzo(qr qrVar) {
        vb vbVar = this.zzcdm;
        while (!qrVar.isEmpty() && vbVar.getValue() == null) {
            vbVar = vbVar.zzK(new qr(qrVar.zzHc()));
            qrVar = qrVar.zzHd();
        }
        return vbVar;
    }

    public final FirebaseDatabase getDatabase() {
        return this.zzcdx;
    }

    /* Access modifiers changed, original: final */
    public final void interrupt() {
        this.zzccd.interrupt("repo_interrupt");
    }

    public final void onDisconnect() {
        zza(qc.zzccN, Boolean.valueOf(false));
        Map zza = se.zza(this.zzcdj);
        si siVar = this.zzcdl;
        si siVar2 = new si();
        siVar.zza(new qr(""), new sf(siVar2, zza));
        ArrayList arrayList = new ArrayList();
        siVar2.zza(qr.zzGZ(), new qy(this, arrayList));
        this.zzcdl = new si();
        zzT(arrayList);
    }

    public final void purgeOutstandingWrites() {
        if (this.zzcdq.zzIH()) {
            this.zzcdq.zzb("Purging writes", null, new Object[0]);
        }
        zzT(this.zzcdw.zzHq());
        zzb(qr.zzGZ(), -25);
        this.zzccd.purgeOutstandingWrites();
    }

    /* Access modifiers changed, original: final */
    public final void resume() {
        this.zzccd.resume("repo_interrupt");
    }

    public final String toString() {
        return this.zzbYW.toString();
    }

    public final void zzB(Map<String, Object> map) {
        for (Entry entry : map.entrySet()) {
            zza(wp.zzgT((String) entry.getKey()), entry.getValue());
        }
    }

    public final void zzGb() {
        zza(qc.zzccN, Boolean.valueOf(true));
    }

    public final rx zzHh() {
        return this.zzbYW;
    }

    public final long zzHi() {
        return this.zzcdj.zzJF();
    }

    /* Access modifiers changed, original: final */
    public final boolean zzHj() {
        return (this.zzcdv.isEmpty() && this.zzcdw.isEmpty()) ? false : true;
    }

    public final void zza(qr qrVar, pz pzVar, CompletionListener completionListener, Map<String, Object> map) {
        wl wlVar;
        String valueOf;
        if (this.zzcdq.zzIH()) {
            wlVar = this.zzcdq;
            valueOf = String.valueOf(qrVar);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 8);
            stringBuilder.append("update: ");
            stringBuilder.append(valueOf);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        if (this.zzcds.zzIH()) {
            wlVar = this.zzcds;
            valueOf = String.valueOf(qrVar);
            String valueOf2 = String.valueOf(map);
            StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf).length() + 9) + String.valueOf(valueOf2).length());
            stringBuilder2.append("update: ");
            stringBuilder2.append(valueOf);
            stringBuilder2.append(" ");
            stringBuilder2.append(valueOf2);
            wlVar.zzb(stringBuilder2.toString(), null, new Object[0]);
        }
        if (pzVar.isEmpty()) {
            if (this.zzcdq.zzIH()) {
                this.zzcdq.zzb("update called with no changes. No-op", null, new Object[0]);
            }
            zza(completionListener, null, qrVar);
            return;
        }
        pz zza = se.zza(pzVar, se.zza(this.zzcdj));
        long zzHk = zzHk();
        zzT(this.zzcdw.zza(qrVar, pzVar, zza, zzHk, true));
        this.zzccd.zza(qrVar.zzHb(), (Map) map, new rt(this, qrVar, zzHk, completionListener));
        Iterator it = pzVar.iterator();
        while (it.hasNext()) {
            zzn(zzb(qrVar.zzh((qr) ((Entry) it.next()).getKey()), -9));
        }
    }

    public final void zza(qr qrVar, xm xmVar, CompletionListener completionListener) {
        wl wlVar;
        String valueOf;
        if (this.zzcdq.zzIH()) {
            wlVar = this.zzcdq;
            valueOf = String.valueOf(qrVar);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 5);
            stringBuilder.append("set: ");
            stringBuilder.append(valueOf);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        if (this.zzcds.zzIH()) {
            wlVar = this.zzcds;
            valueOf = String.valueOf(qrVar);
            String valueOf2 = String.valueOf(xmVar);
            StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf).length() + 6) + String.valueOf(valueOf2).length());
            stringBuilder2.append("set: ");
            stringBuilder2.append(valueOf);
            stringBuilder2.append(" ");
            stringBuilder2.append(valueOf2);
            wlVar.zzb(stringBuilder2.toString(), null, new Object[0]);
        }
        xm zza = se.zza(xmVar, se.zza(this.zzcdj));
        long zzHk = zzHk();
        zzT(this.zzcdw.zza(qrVar, xmVar, zza, zzHk, true, true));
        this.zzccd.zza(qrVar.zzHb(), xmVar.getValue(true), new rs(this, qrVar, zzHk, completionListener));
        zzn(zzb(qrVar, -9));
    }

    public final void zza(qr qrVar, CompletionListener completionListener) {
        this.zzccd.zza(qrVar.zzHb(), new qx(this, qrVar, completionListener));
    }

    public final void zza(qr qrVar, Handler handler, boolean z) {
        wl wlVar;
        String valueOf;
        StringBuilder stringBuilder;
        qr qrVar2 = qrVar;
        Handler handler2 = handler;
        if (this.zzcdq.zzIH()) {
            wlVar = this.zzcdq;
            valueOf = String.valueOf(qrVar);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 13);
            stringBuilder.append("transaction: ");
            stringBuilder.append(valueOf);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        if (this.zzcds.zzIH()) {
            wlVar = this.zzcdq;
            valueOf = String.valueOf(qrVar);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 13);
            stringBuilder.append("transaction: ");
            stringBuilder.append(valueOf);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        if (this.zzcdp.zzcaE && !this.zzcdy) {
            this.zzcdy = true;
            this.zzcdr.info("runTransaction() usage detected while persistence is enabled. Please be aware that transactions *will not* be persisted across database restarts.  See https://www.firebase.com/docs/android/guide/offline-capabilities.html#section-handling-transactions-offline for more details.");
        }
        DatabaseReference zza = zzh.zza(this, qrVar);
        qz qzVar = new qz(this);
        zzf(new to(this, qzVar, zza.zzFr()));
        int i = rw.zzcej;
        long j = this.zzcdz;
        DatabaseReference databaseReference = zza;
        this.zzcdz = j + 1;
        rv rvVar = new rv(qrVar2, handler2, qzVar, i, z, j, null);
        xm zza2 = zza(qrVar2, new ArrayList());
        rvVar.zzceg = zza2;
        Result doTransaction;
        DatabaseError databaseError;
        try {
            doTransaction = handler2.doTransaction(zzh.zza(zza2));
            if (doTransaction == null) {
                throw new NullPointerException("Transaction returned null as result");
            }
            databaseError = null;
            if (doTransaction.isSuccess()) {
                rvVar.zzceb = rw.zzcek;
                vb zzK = this.zzcdm.zzK(qrVar2);
                List list = (List) zzK.getValue();
                if (list == null) {
                    list = new ArrayList();
                }
                list.add(rvVar);
                zzK.setValue(list);
                Map zza3 = se.zza(this.zzcdj);
                xm zzFn = doTransaction.zzFn();
                xm zza4 = se.zza(zzFn, zza3);
                rvVar.zzceh = zzFn;
                rvVar.zzcei = zza4;
                rvVar.zzcef = zzHk();
                zzT(this.zzcdw.zza(qrVar2, zzFn, zza4, rvVar.zzcef, z, false));
                zzHl();
                return;
            }
            rvVar.zzceh = null;
            rvVar.zzcei = null;
            zzo(new ra(this, handler2, databaseError, zzh.zza(databaseReference, xf.zzj(rvVar.zzceg))));
        } catch (Throwable th) {
            databaseError = DatabaseError.fromException(th);
            doTransaction = Transaction.abort();
        }
    }

    public final void zza(qr qrVar, Map<qr, xm> map, CompletionListener completionListener, Map<String, Object> map2) {
        this.zzccd.zzb(qrVar.zzHb(), (Map) map2, new qw(this, qrVar, map, completionListener));
    }

    public final void zza(vt vtVar, boolean z) {
        this.zzcdw.zza(vtVar, z);
    }

    /* Access modifiers changed, original: final */
    public final void zza(CompletionListener completionListener, DatabaseError databaseError, qr qrVar) {
        if (completionListener != null) {
            wp zzHf = qrVar.zzHf();
            if (zzHf != null && zzHf.zzIN()) {
                qrVar = qrVar.zzHe();
            }
            zzo(new rr(this, completionListener, databaseError, zzh.zza(this, qrVar)));
        }
    }

    public final void zza(List<String> list, Object obj, boolean z, Long l) {
        wl wlVar;
        String valueOf;
        List zza;
        qr qrVar = new qr((List) list);
        if (this.zzcdq.zzIH()) {
            wlVar = this.zzcdq;
            valueOf = String.valueOf(qrVar);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 14);
            stringBuilder.append("onDataUpdate: ");
            stringBuilder.append(valueOf);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        if (this.zzcds.zzIH()) {
            wlVar = this.zzcdq;
            valueOf = String.valueOf(qrVar);
            String valueOf2 = String.valueOf(obj);
            StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf).length() + 15) + String.valueOf(valueOf2).length());
            stringBuilder2.append("onDataUpdate: ");
            stringBuilder2.append(valueOf);
            stringBuilder2.append(" ");
            stringBuilder2.append(valueOf2);
            wlVar.zzb(stringBuilder2.toString(), null, new Object[0]);
        }
        this.zzcdt++;
        if (l != null) {
            try {
                th thVar = new th(l.longValue());
                if (z) {
                    Map hashMap = new HashMap();
                    for (Entry entry : ((Map) obj).entrySet()) {
                        hashMap.put(new qr((String) entry.getKey()), xp.zza(entry.getValue(), xd.zzJb()));
                    }
                    zza = this.zzcdw.zza(qrVar, hashMap, thVar);
                } else {
                    zza = this.zzcdw.zza(qrVar, xp.zza(obj, xd.zzJb()), thVar);
                }
            } catch (DatabaseException e) {
                this.zzcdq.zzd("FIREBASE INTERNAL ERROR", e);
                return;
            }
        } else if (z) {
            Map hashMap2 = new HashMap();
            for (Entry entry2 : ((Map) obj).entrySet()) {
                hashMap2.put(new qr((String) entry2.getKey()), xp.zza(entry2.getValue(), xd.zzJb()));
            }
            zza = this.zzcdw.zza(qrVar, hashMap2);
        } else {
            zza = this.zzcdw.zzi(qrVar, xp.zza(obj, xd.zzJb()));
        }
        if (zza.size() > 0) {
            zzn(qrVar);
        }
        zzT(zza);
    }

    public final void zza(List<String> list, List<pe> list2, Long l) {
        wl wlVar;
        String valueOf;
        qr qrVar = new qr((List) list);
        if (this.zzcdq.zzIH()) {
            wlVar = this.zzcdq;
            valueOf = String.valueOf(qrVar);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 20);
            stringBuilder.append("onRangeMergeUpdate: ");
            stringBuilder.append(valueOf);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        if (this.zzcds.zzIH()) {
            wlVar = this.zzcdq;
            valueOf = String.valueOf(qrVar);
            String valueOf2 = String.valueOf(list2);
            StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf).length() + 21) + String.valueOf(valueOf2).length());
            stringBuilder2.append("onRangeMergeUpdate: ");
            stringBuilder2.append(valueOf);
            stringBuilder2.append(" ");
            stringBuilder2.append(valueOf2);
            wlVar.zzb(stringBuilder2.toString(), null, new Object[0]);
        }
        this.zzcdt++;
        List arrayList = new ArrayList(list2.size());
        for (pe xtVar : list2) {
            arrayList.add(new xt(xtVar));
        }
        arrayList = l != null ? this.zzcdw.zza(qrVar, arrayList, new th(l.longValue())) : this.zzcdw.zzb(qrVar, arrayList);
        if (arrayList.size() > 0) {
            zzn(qrVar);
        }
        zzT(arrayList);
    }

    public final void zzaB(boolean z) {
        zza(qc.zzccM, Boolean.valueOf(z));
    }

    public final void zzb(qr qrVar, xm xmVar, CompletionListener completionListener) {
        this.zzccd.zzb(qrVar.zzHb(), xmVar.getValue(true), new ru(this, qrVar, xmVar, completionListener));
    }

    public final void zze(qi qiVar) {
        zzT((qc.zzccK.equals(qiVar.zzGH().zzFq().zzHc()) ? this.zzcdv : this.zzcdw).zzh(qiVar));
    }

    public final void zzf(qi qiVar) {
        wp zzHc = qiVar.zzGH().zzFq().zzHc();
        so soVar = (zzHc == null || !zzHc.equals(qc.zzccK)) ? this.zzcdw : this.zzcdv;
        zzT(soVar.zzg(qiVar));
    }

    public final void zzo(Runnable runnable) {
        this.zzcdp.zzGO();
        this.zzcdp.zzccO.zzo(runnable);
    }

    public final void zzq(Runnable runnable) {
        this.zzcdp.zzGO();
        this.zzcdp.zzccQ.zzq(runnable);
    }
}
