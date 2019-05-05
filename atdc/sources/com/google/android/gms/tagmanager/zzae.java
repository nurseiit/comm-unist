package com.google.android.gms.tagmanager;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbq;

final class zzae implements zzdi<zzbq> {
    private /* synthetic */ zzy zzbDX;

    private zzae(zzy zzy) {
        this.zzbDX = zzy;
    }

    /* synthetic */ zzae(zzy zzy, zzz zzz) {
        this(zzy);
    }

    /* JADX WARNING: Missing block: B:15:0x0076, code skipped:
            return;
     */
    public final /* synthetic */ void onSuccess(java.lang.Object r6) {
        /*
        r5 = this;
        r6 = (com.google.android.gms.internal.zzbq) r6;
        r0 = r5.zzbDX;
        r0 = r0.zzbDO;
        r0.zzAV();
        r0 = r5.zzbDX;
        monitor-enter(r0);
        r1 = r6.zzlB;	 Catch:{ all -> 0x0077 }
        if (r1 != 0) goto L_0x003c;
    L_0x0012:
        r1 = r5.zzbDX;	 Catch:{ all -> 0x0077 }
        r1 = r1.zzbDT;	 Catch:{ all -> 0x0077 }
        r1 = r1.zzlB;	 Catch:{ all -> 0x0077 }
        if (r1 != 0) goto L_0x0032;
    L_0x001c:
        r6 = "Current resource is null; network resource is also null";
        com.google.android.gms.tagmanager.zzdj.e(r6);	 Catch:{ all -> 0x0077 }
        r6 = r5.zzbDX;	 Catch:{ all -> 0x0077 }
        r6 = r6.zzbDO;	 Catch:{ all -> 0x0077 }
        r1 = r6.zzAT();	 Catch:{ all -> 0x0077 }
        r6 = r5.zzbDX;	 Catch:{ all -> 0x0077 }
        r6.zzag(r1);	 Catch:{ all -> 0x0077 }
        monitor-exit(r0);	 Catch:{ all -> 0x0077 }
        return;
    L_0x0032:
        r1 = r5.zzbDX;	 Catch:{ all -> 0x0077 }
        r1 = r1.zzbDT;	 Catch:{ all -> 0x0077 }
        r1 = r1.zzlB;	 Catch:{ all -> 0x0077 }
        r6.zzlB = r1;	 Catch:{ all -> 0x0077 }
    L_0x003c:
        r1 = r5.zzbDX;	 Catch:{ all -> 0x0077 }
        r2 = r5.zzbDX;	 Catch:{ all -> 0x0077 }
        r2 = r2.zzvw;	 Catch:{ all -> 0x0077 }
        r2 = r2.currentTimeMillis();	 Catch:{ all -> 0x0077 }
        r4 = 0;
        r1.zza(r6, r2, r4);	 Catch:{ all -> 0x0077 }
        r1 = r5.zzbDX;	 Catch:{ all -> 0x0077 }
        r1 = r1.zzbDB;	 Catch:{ all -> 0x0077 }
        r3 = 58;
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0077 }
        r4.<init>(r3);	 Catch:{ all -> 0x0077 }
        r3 = "setting refresh time to current time: ";
        r4.append(r3);	 Catch:{ all -> 0x0077 }
        r4.append(r1);	 Catch:{ all -> 0x0077 }
        r1 = r4.toString();	 Catch:{ all -> 0x0077 }
        com.google.android.gms.tagmanager.zzdj.v(r1);	 Catch:{ all -> 0x0077 }
        r1 = r5.zzbDX;	 Catch:{ all -> 0x0077 }
        r1 = r1.zzAQ();	 Catch:{ all -> 0x0077 }
        if (r1 != 0) goto L_0x0075;
    L_0x0070:
        r1 = r5.zzbDX;	 Catch:{ all -> 0x0077 }
        r1.zza(r6);	 Catch:{ all -> 0x0077 }
    L_0x0075:
        monitor-exit(r0);	 Catch:{ all -> 0x0077 }
        return;
    L_0x0077:
        r6 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0077 }
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzae.onSuccess(java.lang.Object):void");
    }

    public final void zzbw(int i) {
        if (i == zzda.zzbFk) {
            this.zzbDX.zzbDO.zzAU();
        }
        synchronized (this.zzbDX) {
            if (!this.zzbDX.isReady()) {
                zzy zzy;
                Result zzb;
                if (this.zzbDX.zzbDR != null) {
                    zzy = this.zzbDX;
                    zzb = this.zzbDX.zzbDR;
                } else {
                    zzy = this.zzbDX;
                    zzb = this.zzbDX.zzb(Status.zzaBp);
                }
                zzy.setResult(zzb);
            }
        }
        this.zzbDX.zzag(this.zzbDX.zzbDO.zzAT());
    }
}
