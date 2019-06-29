package com.google.android.gms.internal;

import android.content.Context;

@zzzn
public abstract class zzxt extends zzafp {
    protected final Context mContext;
    protected final Object mLock = new Object();
    protected final zzxy zzQP;
    protected final zzafg zzQQ;
    protected zzaai zzQR;
    protected final Object zzQT = new Object();

    protected zzxt(Context context, zzafg zzafg, zzxy zzxy) {
        super(true);
        this.mContext = context;
        this.zzQQ = zzafg;
        this.zzQR = zzafg.zzXY;
        this.zzQP = zzxy;
    }

    public void onStop() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x003b A:{Catch:{ zzxw -> 0x0014 }} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0033 A:{Catch:{ zzxw -> 0x0014 }} */
    public final void zzbd() {
        /*
        r5 = this;
        r0 = r5.mLock;
        monitor-enter(r0);
        r1 = "AdRendererBackgroundTask started.";
        com.google.android.gms.internal.zzajc.zzaC(r1);	 Catch:{ all -> 0x0060 }
        r1 = r5.zzQQ;	 Catch:{ all -> 0x0060 }
        r1 = r1.errorCode;	 Catch:{ all -> 0x0060 }
        r2 = android.os.SystemClock.elapsedRealtime();	 Catch:{ zzxw -> 0x0014 }
        r5.zzd(r2);	 Catch:{ zzxw -> 0x0014 }
        goto L_0x0050;
    L_0x0014:
        r1 = move-exception;
        r2 = r1.getErrorCode();	 Catch:{ all -> 0x0060 }
        r3 = 3;
        if (r2 == r3) goto L_0x0028;
    L_0x001c:
        r3 = -1;
        if (r2 != r3) goto L_0x0020;
    L_0x001f:
        goto L_0x0028;
    L_0x0020:
        r1 = r1.getMessage();	 Catch:{ all -> 0x0060 }
        com.google.android.gms.internal.zzajc.zzaT(r1);	 Catch:{ all -> 0x0060 }
        goto L_0x002f;
    L_0x0028:
        r1 = r1.getMessage();	 Catch:{ all -> 0x0060 }
        com.google.android.gms.internal.zzajc.zzaS(r1);	 Catch:{ all -> 0x0060 }
    L_0x002f:
        r1 = r5.zzQR;	 Catch:{ all -> 0x0060 }
        if (r1 != 0) goto L_0x003b;
    L_0x0033:
        r1 = new com.google.android.gms.internal.zzaai;	 Catch:{ all -> 0x0060 }
        r1.<init>(r2);	 Catch:{ all -> 0x0060 }
    L_0x0038:
        r5.zzQR = r1;	 Catch:{ all -> 0x0060 }
        goto L_0x0045;
    L_0x003b:
        r1 = new com.google.android.gms.internal.zzaai;	 Catch:{ all -> 0x0060 }
        r3 = r5.zzQR;	 Catch:{ all -> 0x0060 }
        r3 = r3.zzMg;	 Catch:{ all -> 0x0060 }
        r1.<init>(r2, r3);	 Catch:{ all -> 0x0060 }
        goto L_0x0038;
    L_0x0045:
        r1 = com.google.android.gms.internal.zzagz.zzZr;	 Catch:{ all -> 0x0060 }
        r3 = new com.google.android.gms.internal.zzxu;	 Catch:{ all -> 0x0060 }
        r3.<init>(r5);	 Catch:{ all -> 0x0060 }
        r1.post(r3);	 Catch:{ all -> 0x0060 }
        r1 = r2;
    L_0x0050:
        r1 = r5.zzs(r1);	 Catch:{ all -> 0x0060 }
        r2 = com.google.android.gms.internal.zzagz.zzZr;	 Catch:{ all -> 0x0060 }
        r3 = new com.google.android.gms.internal.zzxv;	 Catch:{ all -> 0x0060 }
        r3.<init>(r5, r1);	 Catch:{ all -> 0x0060 }
        r2.post(r3);	 Catch:{ all -> 0x0060 }
        monitor-exit(r0);	 Catch:{ all -> 0x0060 }
        return;
    L_0x0060:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0060 }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzxt.zzbd():void");
    }

    public abstract void zzd(long j) throws zzxw;

    public abstract zzaff zzs(int i);
}
