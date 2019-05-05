package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult.zza;

final class zzb implements zza {
    private /* synthetic */ Batch zzaAG;

    zzb(Batch batch) {
        this.zzaAG = batch;
    }

    /* JADX WARNING: Missing block: B:24:0x0067, code skipped:
            return;
     */
    public final void zzo(com.google.android.gms.common.api.Status r5) {
        /*
        r4 = this;
        r0 = r4.zzaAG;
        r0 = r0.mLock;
        monitor-enter(r0);
        r1 = r4.zzaAG;	 Catch:{ all -> 0x0068 }
        r1 = r1.isCanceled();	 Catch:{ all -> 0x0068 }
        if (r1 == 0) goto L_0x0011;
    L_0x000f:
        monitor-exit(r0);	 Catch:{ all -> 0x0068 }
        return;
    L_0x0011:
        r1 = r5.isCanceled();	 Catch:{ all -> 0x0068 }
        r2 = 1;
        if (r1 == 0) goto L_0x001e;
    L_0x0018:
        r5 = r4.zzaAG;	 Catch:{ all -> 0x0068 }
        r5.zzaAE = true;	 Catch:{ all -> 0x0068 }
        goto L_0x0029;
    L_0x001e:
        r5 = r5.isSuccess();	 Catch:{ all -> 0x0068 }
        if (r5 != 0) goto L_0x0029;
    L_0x0024:
        r5 = r4.zzaAG;	 Catch:{ all -> 0x0068 }
        r5.zzaAD = true;	 Catch:{ all -> 0x0068 }
    L_0x0029:
        r5 = r4.zzaAG;	 Catch:{ all -> 0x0068 }
        r5.zzaAC = r5.zzaAC - 1;	 Catch:{ all -> 0x0068 }
        r5 = r4.zzaAG;	 Catch:{ all -> 0x0068 }
        r5 = r5.zzaAC;	 Catch:{ all -> 0x0068 }
        if (r5 != 0) goto L_0x0066;
    L_0x0036:
        r5 = r4.zzaAG;	 Catch:{ all -> 0x0068 }
        r5 = r5.zzaAE;	 Catch:{ all -> 0x0068 }
        if (r5 == 0) goto L_0x0044;
    L_0x003e:
        r5 = r4.zzaAG;	 Catch:{ all -> 0x0068 }
        super.cancel();	 Catch:{ all -> 0x0068 }
        goto L_0x0066;
    L_0x0044:
        r5 = r4.zzaAG;	 Catch:{ all -> 0x0068 }
        r5 = r5.zzaAD;	 Catch:{ all -> 0x0068 }
        if (r5 == 0) goto L_0x0054;
    L_0x004c:
        r5 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0068 }
        r1 = 13;
        r5.<init>(r1);	 Catch:{ all -> 0x0068 }
        goto L_0x0056;
    L_0x0054:
        r5 = com.google.android.gms.common.api.Status.zzaBm;	 Catch:{ all -> 0x0068 }
    L_0x0056:
        r1 = r4.zzaAG;	 Catch:{ all -> 0x0068 }
        r2 = new com.google.android.gms.common.api.BatchResult;	 Catch:{ all -> 0x0068 }
        r3 = r4.zzaAG;	 Catch:{ all -> 0x0068 }
        r3 = r3.zzaAF;	 Catch:{ all -> 0x0068 }
        r2.<init>(r5, r3);	 Catch:{ all -> 0x0068 }
        r1.setResult(r2);	 Catch:{ all -> 0x0068 }
    L_0x0066:
        monitor-exit(r0);	 Catch:{ all -> 0x0068 }
        return;
    L_0x0068:
        r5 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0068 }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.zzb.zzo(com.google.android.gms.common.api.Status):void");
    }
}
