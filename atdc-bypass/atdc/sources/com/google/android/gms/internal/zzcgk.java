package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.FutureTask;

final class zzcgk extends Thread {
    private /* synthetic */ zzcgg zzbsh;
    private final Object zzbsk = new Object();
    private final BlockingQueue<FutureTask<?>> zzbsl;

    public zzcgk(zzcgg zzcgg, String str, BlockingQueue<FutureTask<?>> blockingQueue) {
        this.zzbsh = zzcgg;
        zzbo.zzu(str);
        zzbo.zzu(blockingQueue);
        this.zzbsl = blockingQueue;
        setName(str);
    }

    private final void zza(InterruptedException interruptedException) {
        this.zzbsh.zzwF().zzyz().zzj(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* JADX WARNING: Missing block: B:32:0x0052, code skipped:
            r2 = r5.zzbsh.zzbsc;
     */
    /* JADX WARNING: Missing block: B:33:0x0058, code skipped:
            monitor-enter(r2);
     */
    /* JADX WARNING: Missing block: B:35:?, code skipped:
            r5.zzbsh.zzbsd.release();
            r5.zzbsh.zzbsc.notifyAll();
     */
    /* JADX WARNING: Missing block: B:36:0x0071, code skipped:
            if (r5 != r5.zzbsh.zzbrW) goto L_0x0079;
     */
    /* JADX WARNING: Missing block: B:37:0x0073, code skipped:
            r5.zzbsh.zzbrW = null;
     */
    /* JADX WARNING: Missing block: B:39:0x007f, code skipped:
            if (r5 != r5.zzbsh.zzbrX) goto L_0x0087;
     */
    /* JADX WARNING: Missing block: B:40:0x0081, code skipped:
            r5.zzbsh.zzbrX = null;
     */
    /* JADX WARNING: Missing block: B:41:0x0087, code skipped:
            r5.zzbsh.zzwF().zzyx().log("Current scheduler thread is neither worker nor network");
     */
    /* JADX WARNING: Missing block: B:42:0x0096, code skipped:
            monitor-exit(r2);
     */
    /* JADX WARNING: Missing block: B:43:0x0097, code skipped:
            return;
     */
    public final void run() {
        /*
        r5 = this;
        r0 = 0;
    L_0x0001:
        if (r0 != 0) goto L_0x0013;
    L_0x0003:
        r1 = r5.zzbsh;	 Catch:{ InterruptedException -> 0x000e }
        r1 = r1.zzbsd;	 Catch:{ InterruptedException -> 0x000e }
        r1.acquire();	 Catch:{ InterruptedException -> 0x000e }
        r0 = 1;
        goto L_0x0001;
    L_0x000e:
        r1 = move-exception;
        r5.zza(r1);
        goto L_0x0001;
    L_0x0013:
        r0 = 0;
        r1 = r5.zzbsl;	 Catch:{ all -> 0x00a4 }
        r1 = r1.poll();	 Catch:{ all -> 0x00a4 }
        r1 = (java.util.concurrent.FutureTask) r1;	 Catch:{ all -> 0x00a4 }
        if (r1 == 0) goto L_0x0022;
    L_0x001e:
        r1.run();	 Catch:{ all -> 0x00a4 }
        goto L_0x0013;
    L_0x0022:
        r1 = r5.zzbsk;	 Catch:{ all -> 0x00a4 }
        monitor-enter(r1);	 Catch:{ all -> 0x00a4 }
        r2 = r5.zzbsl;	 Catch:{ all -> 0x00a1 }
        r2 = r2.peek();	 Catch:{ all -> 0x00a1 }
        if (r2 != 0) goto L_0x0041;
    L_0x002d:
        r2 = r5.zzbsh;	 Catch:{ all -> 0x00a1 }
        r2 = r2.zzbse;	 Catch:{ all -> 0x00a1 }
        if (r2 != 0) goto L_0x0041;
    L_0x0035:
        r2 = r5.zzbsk;	 Catch:{ InterruptedException -> 0x003d }
        r3 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
        r2.wait(r3);	 Catch:{ InterruptedException -> 0x003d }
        goto L_0x0041;
    L_0x003d:
        r2 = move-exception;
        r5.zza(r2);	 Catch:{ all -> 0x00a1 }
    L_0x0041:
        monitor-exit(r1);	 Catch:{ all -> 0x00a1 }
        r1 = r5.zzbsh;	 Catch:{ all -> 0x00a4 }
        r1 = r1.zzbsc;	 Catch:{ all -> 0x00a4 }
        monitor-enter(r1);	 Catch:{ all -> 0x00a4 }
        r2 = r5.zzbsl;	 Catch:{ all -> 0x009e }
        r2 = r2.peek();	 Catch:{ all -> 0x009e }
        if (r2 != 0) goto L_0x009b;
    L_0x0051:
        monitor-exit(r1);	 Catch:{ all -> 0x009e }
        r1 = r5.zzbsh;
        r2 = r1.zzbsc;
        monitor-enter(r2);
        r1 = r5.zzbsh;	 Catch:{ all -> 0x0098 }
        r1 = r1.zzbsd;	 Catch:{ all -> 0x0098 }
        r1.release();	 Catch:{ all -> 0x0098 }
        r1 = r5.zzbsh;	 Catch:{ all -> 0x0098 }
        r1 = r1.zzbsc;	 Catch:{ all -> 0x0098 }
        r1.notifyAll();	 Catch:{ all -> 0x0098 }
        r1 = r5.zzbsh;	 Catch:{ all -> 0x0098 }
        r1 = r1.zzbrW;	 Catch:{ all -> 0x0098 }
        if (r5 != r1) goto L_0x0079;
    L_0x0073:
        r1 = r5.zzbsh;	 Catch:{ all -> 0x0098 }
        r1.zzbrW = null;	 Catch:{ all -> 0x0098 }
        goto L_0x0096;
    L_0x0079:
        r1 = r5.zzbsh;	 Catch:{ all -> 0x0098 }
        r1 = r1.zzbrX;	 Catch:{ all -> 0x0098 }
        if (r5 != r1) goto L_0x0087;
    L_0x0081:
        r1 = r5.zzbsh;	 Catch:{ all -> 0x0098 }
        r1.zzbrX = null;	 Catch:{ all -> 0x0098 }
        goto L_0x0096;
    L_0x0087:
        r0 = r5.zzbsh;	 Catch:{ all -> 0x0098 }
        r0 = r0.zzwF();	 Catch:{ all -> 0x0098 }
        r0 = r0.zzyx();	 Catch:{ all -> 0x0098 }
        r1 = "Current scheduler thread is neither worker nor network";
        r0.log(r1);	 Catch:{ all -> 0x0098 }
    L_0x0096:
        monitor-exit(r2);	 Catch:{ all -> 0x0098 }
        return;
    L_0x0098:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x0098 }
        throw r0;
    L_0x009b:
        monitor-exit(r1);	 Catch:{ all -> 0x009e }
        goto L_0x0013;
    L_0x009e:
        r2 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x009e }
        throw r2;	 Catch:{ all -> 0x00a4 }
    L_0x00a1:
        r2 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x00a1 }
        throw r2;	 Catch:{ all -> 0x00a4 }
    L_0x00a4:
        r1 = move-exception;
        r2 = r5.zzbsh;
        r2 = r2.zzbsc;
        monitor-enter(r2);
        r3 = r5.zzbsh;	 Catch:{ all -> 0x00eb }
        r3 = r3.zzbsd;	 Catch:{ all -> 0x00eb }
        r3.release();	 Catch:{ all -> 0x00eb }
        r3 = r5.zzbsh;	 Catch:{ all -> 0x00eb }
        r3 = r3.zzbsc;	 Catch:{ all -> 0x00eb }
        r3.notifyAll();	 Catch:{ all -> 0x00eb }
        r3 = r5.zzbsh;	 Catch:{ all -> 0x00eb }
        r3 = r3.zzbrW;	 Catch:{ all -> 0x00eb }
        if (r5 != r3) goto L_0x00cc;
    L_0x00c6:
        r3 = r5.zzbsh;	 Catch:{ all -> 0x00eb }
        r3.zzbrW = null;	 Catch:{ all -> 0x00eb }
        goto L_0x00e9;
    L_0x00cc:
        r3 = r5.zzbsh;	 Catch:{ all -> 0x00eb }
        r3 = r3.zzbrX;	 Catch:{ all -> 0x00eb }
        if (r5 != r3) goto L_0x00da;
    L_0x00d4:
        r3 = r5.zzbsh;	 Catch:{ all -> 0x00eb }
        r3.zzbrX = null;	 Catch:{ all -> 0x00eb }
        goto L_0x00e9;
    L_0x00da:
        r0 = r5.zzbsh;	 Catch:{ all -> 0x00eb }
        r0 = r0.zzwF();	 Catch:{ all -> 0x00eb }
        r0 = r0.zzyx();	 Catch:{ all -> 0x00eb }
        r3 = "Current scheduler thread is neither worker nor network";
        r0.log(r3);	 Catch:{ all -> 0x00eb }
    L_0x00e9:
        monitor-exit(r2);	 Catch:{ all -> 0x00eb }
        throw r1;
    L_0x00eb:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x00eb }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcgk.run():void");
    }

    public final void zzfF() {
        synchronized (this.zzbsk) {
            this.zzbsk.notifyAll();
        }
    }
}
