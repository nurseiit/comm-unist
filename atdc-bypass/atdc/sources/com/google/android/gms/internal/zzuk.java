package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzbs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@zzzn
public final class zzuk implements zztz {
    private final Context mContext;
    private final Object mLock = new Object();
    private final long mStartTime;
    private final zzaae zzMM;
    private final long zzMN;
    private final int zzMO;
    private boolean zzMP = false;
    private final Map<zzajm<zzuh>, zzue> zzMQ = new HashMap();
    private final String zzMR;
    private List<zzuh> zzMS = new ArrayList();
    private final zzub zzMu;
    private final boolean zzMy;
    private final zzuq zzsX;
    private final boolean zzwJ;

    public zzuk(Context context, zzaae zzaae, zzuq zzuq, zzub zzub, boolean z, boolean z2, String str, long j, long j2, int i) {
        this.mContext = context;
        this.zzMM = zzaae;
        this.zzsX = zzuq;
        this.zzMu = zzub;
        this.zzwJ = z;
        this.zzMy = z2;
        this.zzMR = str;
        this.mStartTime = j;
        this.zzMN = j2;
        this.zzMO = 2;
    }

    private final void zza(zzajm<zzuh> zzajm) {
        zzagz.zzZr.post(new zzum(this, zzajm));
    }

    /* JADX WARNING: Missing block: B:9:0x0010, code skipped:
            r4 = r4.iterator();
     */
    /* JADX WARNING: Missing block: B:11:0x0018, code skipped:
            if (r4.hasNext() == false) goto L_0x003c;
     */
    /* JADX WARNING: Missing block: B:12:0x001a, code skipped:
            r0 = (com.google.android.gms.internal.zzajm) r4.next();
     */
    /* JADX WARNING: Missing block: B:14:?, code skipped:
            r1 = (com.google.android.gms.internal.zzuh) r0.get();
            r3.zzMS.add(r1);
     */
    /* JADX WARNING: Missing block: B:15:0x002b, code skipped:
            if (r1 == null) goto L_0x0014;
     */
    /* JADX WARNING: Missing block: B:17:0x002f, code skipped:
            if (r1.zzMF != 0) goto L_0x0014;
     */
    /* JADX WARNING: Missing block: B:18:0x0031, code skipped:
            zza(r0);
     */
    /* JADX WARNING: Missing block: B:19:0x0034, code skipped:
            return r1;
     */
    /* JADX WARNING: Missing block: B:20:0x0035, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:21:0x0036, code skipped:
            com.google.android.gms.internal.zzajc.zzc("Exception while processing an adapter; continuing with other adapters", r0);
     */
    /* JADX WARNING: Missing block: B:22:0x003c, code skipped:
            zza(null);
     */
    /* JADX WARNING: Missing block: B:23:0x0046, code skipped:
            return new com.google.android.gms.internal.zzuh(1);
     */
    private final com.google.android.gms.internal.zzuh zzg(java.util.List<com.google.android.gms.internal.zzajm<com.google.android.gms.internal.zzuh>> r4) {
        /*
        r3 = this;
        r0 = r3.mLock;
        monitor-enter(r0);
        r1 = r3.zzMP;	 Catch:{ all -> 0x0047 }
        if (r1 == 0) goto L_0x000f;
    L_0x0007:
        r4 = new com.google.android.gms.internal.zzuh;	 Catch:{ all -> 0x0047 }
        r1 = -1;
        r4.<init>(r1);	 Catch:{ all -> 0x0047 }
        monitor-exit(r0);	 Catch:{ all -> 0x0047 }
        return r4;
    L_0x000f:
        monitor-exit(r0);	 Catch:{ all -> 0x0047 }
        r4 = r4.iterator();
    L_0x0014:
        r0 = r4.hasNext();
        if (r0 == 0) goto L_0x003c;
    L_0x001a:
        r0 = r4.next();
        r0 = (com.google.android.gms.internal.zzajm) r0;
        r1 = r0.get();	 Catch:{ InterruptedException | ExecutionException -> 0x0035, InterruptedException | ExecutionException -> 0x0035 }
        r1 = (com.google.android.gms.internal.zzuh) r1;	 Catch:{ InterruptedException | ExecutionException -> 0x0035, InterruptedException | ExecutionException -> 0x0035 }
        r2 = r3.zzMS;	 Catch:{ InterruptedException | ExecutionException -> 0x0035, InterruptedException | ExecutionException -> 0x0035 }
        r2.add(r1);	 Catch:{ InterruptedException | ExecutionException -> 0x0035, InterruptedException | ExecutionException -> 0x0035 }
        if (r1 == 0) goto L_0x0014;
    L_0x002d:
        r2 = r1.zzMF;	 Catch:{ InterruptedException | ExecutionException -> 0x0035, InterruptedException | ExecutionException -> 0x0035 }
        if (r2 != 0) goto L_0x0014;
    L_0x0031:
        r3.zza(r0);	 Catch:{ InterruptedException | ExecutionException -> 0x0035, InterruptedException | ExecutionException -> 0x0035 }
        return r1;
    L_0x0035:
        r0 = move-exception;
        r1 = "Exception while processing an adapter; continuing with other adapters";
        com.google.android.gms.internal.zzajc.zzc(r1, r0);
        goto L_0x0014;
    L_0x003c:
        r4 = 0;
        r3.zza(r4);
        r4 = new com.google.android.gms.internal.zzuh;
        r0 = 1;
        r4.<init>(r0);
        return r4;
    L_0x0047:
        r4 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0047 }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzuk.zzg(java.util.List):com.google.android.gms.internal.zzuh");
    }

    /* JADX WARNING: Missing block: B:10:0x0018, code skipped:
            if (r14.zzMu.zzMk == -1) goto L_0x001f;
     */
    /* JADX WARNING: Missing block: B:11:0x001a, code skipped:
            r0 = r14.zzMu.zzMk;
     */
    /* JADX WARNING: Missing block: B:12:0x001f, code skipped:
            r0 = 10000;
     */
    /* JADX WARNING: Missing block: B:13:0x0021, code skipped:
            r15 = r15.iterator();
            r3 = null;
            r1 = r0;
            r0 = null;
            r4 = -1;
     */
    /* JADX WARNING: Missing block: B:15:0x002d, code skipped:
            if (r15.hasNext() == false) goto L_0x009e;
     */
    /* JADX WARNING: Missing block: B:16:0x002f, code skipped:
            r5 = (com.google.android.gms.internal.zzajm) r15.next();
            r6 = com.google.android.gms.ads.internal.zzbs.zzbF().currentTimeMillis();
     */
    /* JADX WARNING: Missing block: B:17:0x0041, code skipped:
            if (r1 != 0) goto L_0x0054;
     */
    /* JADX WARNING: Missing block: B:20:0x0047, code skipped:
            if (r5.isDone() == false) goto L_0x0054;
     */
    /* JADX WARNING: Missing block: B:21:0x0049, code skipped:
            r10 = r5.get();
     */
    /* JADX WARNING: Missing block: B:22:0x004d, code skipped:
            r10 = (com.google.android.gms.internal.zzuh) r10;
     */
    /* JADX WARNING: Missing block: B:25:0x0052, code skipped:
            r5 = move-exception;
     */
    /* JADX WARNING: Missing block: B:27:0x0054, code skipped:
            r10 = r5.get(r1, java.util.concurrent.TimeUnit.MILLISECONDS);
     */
    /* JADX WARNING: Missing block: B:28:0x005b, code skipped:
            r14.zzMS.add(r10);
     */
    /* JADX WARNING: Missing block: B:29:0x0060, code skipped:
            if (r10 == null) goto L_0x007d;
     */
    /* JADX WARNING: Missing block: B:31:0x0064, code skipped:
            if (r10.zzMF != 0) goto L_0x007d;
     */
    /* JADX WARNING: Missing block: B:32:0x0066, code skipped:
            r11 = r10.zzMK;
     */
    /* JADX WARNING: Missing block: B:33:0x0068, code skipped:
            if (r11 == null) goto L_0x007d;
     */
    /* JADX WARNING: Missing block: B:35:0x006e, code skipped:
            if (r11.zzfo() <= r4) goto L_0x007d;
     */
    /* JADX WARNING: Missing block: B:37:0x0074, code skipped:
            r3 = r5;
            r0 = r10;
            r4 = r11.zzfo();
     */
    /* JADX WARNING: Missing block: B:39:?, code skipped:
            com.google.android.gms.internal.zzajc.zzc("Exception while processing an adapter; continuing with other adapters", r5);
     */
    /* JADX WARNING: Missing block: B:41:0x008e, code skipped:
            java.lang.Math.max(r1 - (com.google.android.gms.ads.internal.zzbs.zzbF().currentTimeMillis() - r6), 0);
     */
    /* JADX WARNING: Missing block: B:43:0x009e, code skipped:
            zza(r3);
     */
    /* JADX WARNING: Missing block: B:44:0x00a1, code skipped:
            if (r0 != null) goto L_0x00aa;
     */
    /* JADX WARNING: Missing block: B:46:0x00a9, code skipped:
            return new com.google.android.gms.internal.zzuh(1);
     */
    /* JADX WARNING: Missing block: B:47:0x00aa, code skipped:
            return r0;
     */
    private final com.google.android.gms.internal.zzuh zzh(java.util.List<com.google.android.gms.internal.zzajm<com.google.android.gms.internal.zzuh>> r15) {
        /*
        r14 = this;
        r0 = r14.mLock;
        monitor-enter(r0);
        r1 = r14.zzMP;	 Catch:{ all -> 0x00ab }
        r2 = -1;
        if (r1 == 0) goto L_0x000f;
    L_0x0008:
        r15 = new com.google.android.gms.internal.zzuh;	 Catch:{ all -> 0x00ab }
        r15.<init>(r2);	 Catch:{ all -> 0x00ab }
        monitor-exit(r0);	 Catch:{ all -> 0x00ab }
        return r15;
    L_0x000f:
        monitor-exit(r0);	 Catch:{ all -> 0x00ab }
        r0 = r14.zzMu;
        r0 = r0.zzMk;
        r3 = -1;
        r5 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1));
        if (r5 == 0) goto L_0x001f;
    L_0x001a:
        r0 = r14.zzMu;
        r0 = r0.zzMk;
        goto L_0x0021;
    L_0x001f:
        r0 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
    L_0x0021:
        r15 = r15.iterator();
        r3 = 0;
        r1 = r0;
        r0 = r3;
        r4 = -1;
    L_0x0029:
        r5 = r15.hasNext();
        if (r5 == 0) goto L_0x009e;
    L_0x002f:
        r5 = r15.next();
        r5 = (com.google.android.gms.internal.zzajm) r5;
        r6 = com.google.android.gms.ads.internal.zzbs.zzbF();
        r6 = r6.currentTimeMillis();
        r8 = 0;
        r10 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1));
        if (r10 != 0) goto L_0x0054;
    L_0x0043:
        r10 = r5.isDone();	 Catch:{ RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052 }
        if (r10 == 0) goto L_0x0054;
    L_0x0049:
        r10 = r5.get();	 Catch:{ RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052 }
    L_0x004d:
        r10 = (com.google.android.gms.internal.zzuh) r10;	 Catch:{ RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052 }
        goto L_0x005b;
    L_0x0050:
        r15 = move-exception;
        goto L_0x008e;
    L_0x0052:
        r5 = move-exception;
        goto L_0x0078;
    L_0x0054:
        r10 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052 }
        r10 = r5.get(r1, r10);	 Catch:{ RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052 }
        goto L_0x004d;
    L_0x005b:
        r11 = r14.zzMS;	 Catch:{ RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052 }
        r11.add(r10);	 Catch:{ RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052 }
        if (r10 == 0) goto L_0x007d;
    L_0x0062:
        r11 = r10.zzMF;	 Catch:{ RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052 }
        if (r11 != 0) goto L_0x007d;
    L_0x0066:
        r11 = r10.zzMK;	 Catch:{ RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052 }
        if (r11 == 0) goto L_0x007d;
    L_0x006a:
        r12 = r11.zzfo();	 Catch:{ RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052 }
        if (r12 <= r4) goto L_0x007d;
    L_0x0070:
        r11 = r11.zzfo();	 Catch:{ RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0052 }
        r3 = r5;
        r0 = r10;
        r4 = r11;
        goto L_0x007d;
    L_0x0078:
        r10 = "Exception while processing an adapter; continuing with other adapters";
        com.google.android.gms.internal.zzajc.zzc(r10, r5);	 Catch:{ all -> 0x0050 }
    L_0x007d:
        r5 = com.google.android.gms.ads.internal.zzbs.zzbF();
        r10 = r5.currentTimeMillis();
        r12 = r10 - r6;
        r5 = r1 - r12;
        r1 = java.lang.Math.max(r5, r8);
        goto L_0x0029;
    L_0x008e:
        r0 = com.google.android.gms.ads.internal.zzbs.zzbF();
        r3 = r0.currentTimeMillis();
        r10 = r3 - r6;
        r3 = r1 - r10;
        java.lang.Math.max(r3, r8);
        throw r15;
    L_0x009e:
        r14.zza(r3);
        if (r0 != 0) goto L_0x00aa;
    L_0x00a3:
        r15 = new com.google.android.gms.internal.zzuh;
        r0 = 1;
        r15.<init>(r0);
        return r15;
    L_0x00aa:
        return r0;
    L_0x00ab:
        r15 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x00ab }
        throw r15;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzuk.zzh(java.util.List):com.google.android.gms.internal.zzuh");
    }

    public final void cancel() {
        synchronized (this.mLock) {
            this.zzMP = true;
            for (zzue cancel : this.zzMQ.values()) {
                cancel.cancel();
            }
        }
    }

    public final zzuh zzf(List<zzua> list) {
        zzajc.zzaC("Starting mediation.");
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        ArrayList arrayList = new ArrayList();
        zziv zziv = this.zzMM.zzvX;
        int[] iArr = new int[2];
        if (zziv.zzAu != null) {
            zzbs.zzbS();
            if (zzuj.zza(this.zzMR, iArr)) {
                int i = 0;
                int i2 = iArr[0];
                int i3 = iArr[1];
                zziv[] zzivArr = zziv.zzAu;
                int length = zzivArr.length;
                while (i < length) {
                    zziv zziv2 = zzivArr[i];
                    if (i2 == zziv2.width && i3 == zziv2.height) {
                        zziv = zziv2;
                        break;
                    }
                    i++;
                }
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzua zzua = (zzua) it.next();
            String str = "Trying mediation network: ";
            String valueOf = String.valueOf(zzua.zzLI);
            zzajc.zzaS(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            Iterator it2 = zzua.zzLJ.iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                Context context = this.mContext;
                zzuq zzuq = this.zzsX;
                zzub zzub = this.zzMu;
                zzir zzir = this.zzMM.zzSz;
                zzaje zzaje = this.zzMM.zzvT;
                Iterator it3 = it;
                Iterator it4 = it2;
                zzaje zzaje2 = zzaje;
                zzua zzua2 = zzua;
                zzir zzir2 = zzir;
                zziv zziv3 = zziv;
                zzue zzue = new zzue(context, str2, zzuq, zzub, zzua2, zzir2, zziv3, zzaje2, this.zzwJ, this.zzMy, this.zzMM.zzwj, this.zzMM.zzwq, this.zzMM.zzSO, this.zzMM.zzTj);
                zzajm zza = zzagt.zza(newCachedThreadPool, new zzul(this, zzue));
                this.zzMQ.put(zza, zzue);
                arrayList.add(zza);
                it = it3;
                it2 = it4;
            }
        }
        return this.zzMO != 2 ? zzg(arrayList) : zzh(arrayList);
    }

    public final List<zzuh> zzfg() {
        return this.zzMS;
    }
}
