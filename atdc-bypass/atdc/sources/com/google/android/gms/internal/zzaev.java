package com.google.android.gms.internal;

import android.content.Context;

@zzzn
public final class zzaev implements zzgi {
    private final Context mContext;
    private final Object mLock = new Object();
    private boolean zzXy = false;
    private final String zztV;

    public zzaev(Context context, String str) {
        this.mContext = context;
        this.zztV = str;
    }

    public final void zza(zzgh zzgh) {
        zzu(zzgh.zzxS);
    }

    /* JADX WARNING: Missing block: B:15:0x0034, code skipped:
            return;
     */
    public final void zzu(boolean r4) {
        /*
        r3 = this;
        r0 = com.google.android.gms.ads.internal.zzbs.zzbY();
        r1 = r3.mContext;
        r0 = r0.zzp(r1);
        if (r0 != 0) goto L_0x000d;
    L_0x000c:
        return;
    L_0x000d:
        r0 = r3.mLock;
        monitor-enter(r0);
        r1 = r3.zzXy;	 Catch:{ all -> 0x0035 }
        if (r1 != r4) goto L_0x0016;
    L_0x0014:
        monitor-exit(r0);	 Catch:{ all -> 0x0035 }
        return;
    L_0x0016:
        r3.zzXy = r4;	 Catch:{ all -> 0x0035 }
        r4 = r3.zzXy;	 Catch:{ all -> 0x0035 }
        if (r4 == 0) goto L_0x0028;
    L_0x001c:
        r4 = com.google.android.gms.ads.internal.zzbs.zzbY();	 Catch:{ all -> 0x0035 }
        r1 = r3.mContext;	 Catch:{ all -> 0x0035 }
        r2 = r3.zztV;	 Catch:{ all -> 0x0035 }
        r4.zzc(r1, r2);	 Catch:{ all -> 0x0035 }
        goto L_0x0033;
    L_0x0028:
        r4 = com.google.android.gms.ads.internal.zzbs.zzbY();	 Catch:{ all -> 0x0035 }
        r1 = r3.mContext;	 Catch:{ all -> 0x0035 }
        r2 = r3.zztV;	 Catch:{ all -> 0x0035 }
        r4.zzd(r1, r2);	 Catch:{ all -> 0x0035 }
    L_0x0033:
        monitor-exit(r0);	 Catch:{ all -> 0x0035 }
        return;
    L_0x0035:
        r4 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0035 }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaev.zzu(boolean):void");
    }
}
