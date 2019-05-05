package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zzadm extends zzafp implements zzads, zzadv {
    private final Context mContext;
    private int mErrorCode = 3;
    private final Object mLock;
    private final String zzMs;
    private final zzafg zzQQ;
    private final String zzWA;
    private final zzua zzWB;
    private final long zzWC;
    private int zzWD = 0;
    private zzadp zzWE;
    private final zzadz zzWy;
    private final zzadv zzWz;

    public zzadm(Context context, String str, String str2, zzua zzua, zzafg zzafg, zzadz zzadz, zzadv zzadv, long j) {
        this.mContext = context;
        this.zzMs = str;
        this.zzWA = str2;
        this.zzWB = zzua;
        this.zzQQ = zzafg;
        this.zzWy = zzadz;
        this.mLock = new Object();
        this.zzWz = zzadv;
        this.zzWC = j;
    }

    private final void zza(zzir zzir, zzut zzut) {
        this.zzWy.zzgX().zza((zzadv) this);
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzMs)) {
                zzut.zza(zzir, this.zzWA, this.zzWB.zzLH);
            } else {
                zzut.zzc(zzir, this.zzWA);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Fail to load ad from adapter.", e);
            zza(this.zzMs, 0);
        }
    }

    private final boolean zzf(long j) {
        int i;
        j = this.zzWC - (zzbs.zzbF().elapsedRealtime() - j);
        if (j <= 0) {
            i = 4;
        } else {
            try {
                this.mLock.wait(j);
                return true;
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                i = 5;
            }
        }
        this.mErrorCode = i;
        return false;
    }

    public final void onStop() {
    }

    public final void zza(String str, int i) {
        synchronized (this.mLock) {
            this.zzWD = 2;
            this.mErrorCode = i;
            this.mLock.notify();
        }
    }

    public final void zzaw(String str) {
        synchronized (this.mLock) {
            this.zzWD = 1;
            this.mLock.notify();
        }
    }

    /* JADX WARNING: Missing block: B:44:0x00f0, code skipped:
            return;
     */
    public final void zzbd() {
        /*
        r11 = this;
        r0 = r11.zzWy;
        if (r0 == 0) goto L_0x00f0;
    L_0x0004:
        r0 = r11.zzWy;
        r0 = r0.zzgX();
        if (r0 == 0) goto L_0x00f0;
    L_0x000c:
        r0 = r11.zzWy;
        r0 = r0.zzgW();
        if (r0 != 0) goto L_0x0015;
    L_0x0014:
        return;
    L_0x0015:
        r0 = r11.zzWy;
        r0 = r0.zzgX();
        r1 = 0;
        r0.zza(r1);
        r0.zza(r11);
        r2 = r11.zzQQ;
        r2 = r2.zzUj;
        r2 = r2.zzSz;
        r3 = r11.zzWy;
        r3 = r3.zzgW();
        r4 = r3.isInitialized();	 Catch:{ RemoteException -> 0x0047 }
        if (r4 == 0) goto L_0x003f;
    L_0x0034:
        r4 = com.google.android.gms.internal.zzaiy.zzaaH;	 Catch:{ RemoteException -> 0x0047 }
        r5 = new com.google.android.gms.internal.zzadn;	 Catch:{ RemoteException -> 0x0047 }
        r5.<init>(r11, r2, r3);	 Catch:{ RemoteException -> 0x0047 }
    L_0x003b:
        r4.post(r5);	 Catch:{ RemoteException -> 0x0047 }
        goto L_0x0053;
    L_0x003f:
        r4 = com.google.android.gms.internal.zzaiy.zzaaH;	 Catch:{ RemoteException -> 0x0047 }
        r5 = new com.google.android.gms.internal.zzado;	 Catch:{ RemoteException -> 0x0047 }
        r5.<init>(r11, r3, r2, r0);	 Catch:{ RemoteException -> 0x0047 }
        goto L_0x003b;
    L_0x0047:
        r2 = move-exception;
        r3 = "Fail to check if adapter is initialized.";
        com.google.android.gms.internal.zzajc.zzc(r3, r2);
        r2 = r11.zzMs;
        r3 = 0;
        r11.zza(r2, r3);
    L_0x0053:
        r2 = com.google.android.gms.ads.internal.zzbs.zzbF();
        r2 = r2.elapsedRealtime();
    L_0x005b:
        r4 = r11.mLock;
        monitor-enter(r4);
        r5 = r11.zzWD;	 Catch:{ all -> 0x00ed }
        r6 = 1;
        if (r5 == 0) goto L_0x0099;
    L_0x0063:
        r5 = new com.google.android.gms.internal.zzadr;	 Catch:{ all -> 0x00ed }
        r5.<init>();	 Catch:{ all -> 0x00ed }
        r7 = com.google.android.gms.ads.internal.zzbs.zzbF();	 Catch:{ all -> 0x00ed }
        r7 = r7.elapsedRealtime();	 Catch:{ all -> 0x00ed }
        r9 = 0;
        r9 = r7 - r2;
        r2 = r5.zzg(r9);	 Catch:{ all -> 0x00ed }
        r3 = r11.zzWD;	 Catch:{ all -> 0x00ed }
        if (r6 != r3) goto L_0x007d;
    L_0x007b:
        r3 = 6;
        goto L_0x007f;
    L_0x007d:
        r3 = r11.mErrorCode;	 Catch:{ all -> 0x00ed }
    L_0x007f:
        r2 = r2.zzw(r3);	 Catch:{ all -> 0x00ed }
        r3 = r11.zzMs;	 Catch:{ all -> 0x00ed }
        r2 = r2.zzax(r3);	 Catch:{ all -> 0x00ed }
        r3 = r11.zzWB;	 Catch:{ all -> 0x00ed }
        r3 = r3.zzLK;	 Catch:{ all -> 0x00ed }
        r2 = r2.zzay(r3);	 Catch:{ all -> 0x00ed }
        r2 = r2.zzgU();	 Catch:{ all -> 0x00ed }
        r11.zzWE = r2;	 Catch:{ all -> 0x00ed }
    L_0x0097:
        monitor-exit(r4);	 Catch:{ all -> 0x00ed }
        goto L_0x00ce;
    L_0x0099:
        r5 = r11.zzf(r2);	 Catch:{ all -> 0x00ed }
        if (r5 != 0) goto L_0x00ea;
    L_0x009f:
        r5 = new com.google.android.gms.internal.zzadr;	 Catch:{ all -> 0x00ed }
        r5.<init>();	 Catch:{ all -> 0x00ed }
        r7 = r11.mErrorCode;	 Catch:{ all -> 0x00ed }
        r5 = r5.zzw(r7);	 Catch:{ all -> 0x00ed }
        r7 = com.google.android.gms.ads.internal.zzbs.zzbF();	 Catch:{ all -> 0x00ed }
        r7 = r7.elapsedRealtime();	 Catch:{ all -> 0x00ed }
        r9 = 0;
        r9 = r7 - r2;
        r2 = r5.zzg(r9);	 Catch:{ all -> 0x00ed }
        r3 = r11.zzMs;	 Catch:{ all -> 0x00ed }
        r2 = r2.zzax(r3);	 Catch:{ all -> 0x00ed }
        r3 = r11.zzWB;	 Catch:{ all -> 0x00ed }
        r3 = r3.zzLK;	 Catch:{ all -> 0x00ed }
        r2 = r2.zzay(r3);	 Catch:{ all -> 0x00ed }
        r2 = r2.zzgU();	 Catch:{ all -> 0x00ed }
        r11.zzWE = r2;	 Catch:{ all -> 0x00ed }
        goto L_0x0097;
    L_0x00ce:
        r0.zza(r1);
        r0.zza(r1);
        r0 = r11.zzWD;
        if (r0 != r6) goto L_0x00e0;
    L_0x00d8:
        r0 = r11.zzWz;
        r1 = r11.zzMs;
        r0.zzaw(r1);
        return;
    L_0x00e0:
        r0 = r11.zzWz;
        r1 = r11.zzMs;
        r2 = r11.mErrorCode;
        r0.zza(r1, r2);
        return;
    L_0x00ea:
        monitor-exit(r4);	 Catch:{ all -> 0x00ed }
        goto L_0x005b;
    L_0x00ed:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x00ed }
        throw r0;
    L_0x00f0:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzadm.zzbd():void");
    }

    public final zzadp zzgR() {
        zzadp zzadp;
        synchronized (this.mLock) {
            zzadp = this.zzWE;
        }
        return zzadp;
    }

    public final zzua zzgS() {
        return this.zzWB;
    }

    public final void zzgT() {
        zza(this.zzQQ.zzUj.zzSz, this.zzWy.zzgW());
    }

    public final void zzv(int i) {
        zza(this.zzMs, 0);
    }
}
