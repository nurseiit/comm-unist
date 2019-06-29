package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.os.ConditionVariable;
import android.support.annotation.Nullable;

@zzzn
public final class zzmm {
    private final Object mLock = new Object();
    private final ConditionVariable zzBS = new ConditionVariable();
    @Nullable
    private SharedPreferences zzBT = null;
    private volatile boolean zzuH = false;

    /* JADX WARNING: Missing block: B:20:0x0025, code skipped:
            return;
     */
    public final void initialize(android.content.Context r4) {
        /*
        r3 = this;
        r0 = r3.zzuH;
        if (r0 == 0) goto L_0x0005;
    L_0x0004:
        return;
    L_0x0005:
        r0 = r3.mLock;
        monitor-enter(r0);
        r1 = r3.zzuH;	 Catch:{ all -> 0x0043 }
        if (r1 == 0) goto L_0x000e;
    L_0x000c:
        monitor-exit(r0);	 Catch:{ all -> 0x0043 }
        return;
    L_0x000e:
        r1 = com.google.android.gms.common.zzo.getRemoteContext(r4);	 Catch:{ all -> 0x003c }
        if (r1 != 0) goto L_0x001d;
    L_0x0014:
        if (r4 == 0) goto L_0x001d;
    L_0x0016:
        r1 = r4.getApplicationContext();	 Catch:{ all -> 0x003c }
        if (r1 != 0) goto L_0x001d;
    L_0x001c:
        r1 = r4;
    L_0x001d:
        if (r1 != 0) goto L_0x0026;
    L_0x001f:
        r4 = r3.zzBS;	 Catch:{ all -> 0x0043 }
        r4.open();	 Catch:{ all -> 0x0043 }
        monitor-exit(r0);	 Catch:{ all -> 0x0043 }
        return;
    L_0x0026:
        com.google.android.gms.ads.internal.zzbs.zzbJ();	 Catch:{ all -> 0x003c }
        r4 = "google_ads_flags";
        r2 = 0;
        r4 = r1.getSharedPreferences(r4, r2);	 Catch:{ all -> 0x003c }
        r3.zzBT = r4;	 Catch:{ all -> 0x003c }
        r4 = 1;
        r3.zzuH = r4;	 Catch:{ all -> 0x003c }
        r4 = r3.zzBS;	 Catch:{ all -> 0x0043 }
        r4.open();	 Catch:{ all -> 0x0043 }
        monitor-exit(r0);	 Catch:{ all -> 0x0043 }
        return;
    L_0x003c:
        r4 = move-exception;
        r1 = r3.zzBS;	 Catch:{ all -> 0x0043 }
        r1.open();	 Catch:{ all -> 0x0043 }
        throw r4;	 Catch:{ all -> 0x0043 }
    L_0x0043:
        r4 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0043 }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzmm.initialize(android.content.Context):void");
    }

    public final <T> T zzd(zzme<T> zzme) {
        if (this.zzBS.block(5000)) {
            if (!this.zzuH || this.zzBT == null) {
                synchronized (this.mLock) {
                    if (this.zzuH) {
                        if (this.zzBT == null) {
                        }
                    }
                    Object zzdI = zzme.zzdI();
                    return zzdI;
                }
            }
            return zzait.zzb(new zzmn(this, zzme));
        }
        throw new IllegalStateException("Flags.initialize() was not called!");
    }
}
