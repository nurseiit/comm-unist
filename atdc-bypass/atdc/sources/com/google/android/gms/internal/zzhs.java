package com.google.android.gms.internal;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zzhs {
    @Nullable
    private Context mContext;
    private final Object mLock = new Object();
    private final Runnable zzzp = new zzht(this);
    @Nullable
    private zzhz zzzq;
    @Nullable
    private zzid zzzr;

    /* JADX WARNING: Missing block: B:12:0x002f, code skipped:
            return;
     */
    private final void connect() {
        /*
        r6 = this;
        r0 = r6.mLock;
        monitor-enter(r0);
        r1 = r6.mContext;	 Catch:{ all -> 0x0030 }
        if (r1 == 0) goto L_0x002e;
    L_0x0007:
        r1 = r6.zzzq;	 Catch:{ all -> 0x0030 }
        if (r1 == 0) goto L_0x000c;
    L_0x000b:
        goto L_0x002e;
    L_0x000c:
        r1 = new com.google.android.gms.internal.zzhv;	 Catch:{ all -> 0x0030 }
        r1.<init>(r6);	 Catch:{ all -> 0x0030 }
        r2 = new com.google.android.gms.internal.zzhw;	 Catch:{ all -> 0x0030 }
        r2.<init>(r6);	 Catch:{ all -> 0x0030 }
        r3 = new com.google.android.gms.internal.zzhz;	 Catch:{ all -> 0x0030 }
        r4 = r6.mContext;	 Catch:{ all -> 0x0030 }
        r5 = com.google.android.gms.ads.internal.zzbs.zzbP();	 Catch:{ all -> 0x0030 }
        r5 = r5.zzie();	 Catch:{ all -> 0x0030 }
        r3.<init>(r4, r5, r1, r2);	 Catch:{ all -> 0x0030 }
        r6.zzzq = r3;	 Catch:{ all -> 0x0030 }
        r1 = r6.zzzq;	 Catch:{ all -> 0x0030 }
        r1.zzrb();	 Catch:{ all -> 0x0030 }
        monitor-exit(r0);	 Catch:{ all -> 0x0030 }
        return;
    L_0x002e:
        monitor-exit(r0);	 Catch:{ all -> 0x0030 }
        return;
    L_0x0030:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0030 }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzhs.connect():void");
    }

    private final void disconnect() {
        synchronized (this.mLock) {
            if (this.zzzq == null) {
                return;
            }
            if (this.zzzq.isConnected() || this.zzzq.isConnecting()) {
                this.zzzq.disconnect();
            }
            this.zzzq = null;
            this.zzzr = null;
            Binder.flushPendingCommands();
        }
    }

    /* JADX WARNING: Missing block: B:16:0x0047, code skipped:
            return;
     */
    public final void initialize(android.content.Context r3) {
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0003;
    L_0x0002:
        return;
    L_0x0003:
        r0 = r2.mLock;
        monitor-enter(r0);
        r1 = r2.mContext;	 Catch:{ all -> 0x0048 }
        if (r1 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r0);	 Catch:{ all -> 0x0048 }
        return;
    L_0x000c:
        r3 = r3.getApplicationContext();	 Catch:{ all -> 0x0048 }
        r2.mContext = r3;	 Catch:{ all -> 0x0048 }
        r3 = com.google.android.gms.internal.zzmo.zzGk;	 Catch:{ all -> 0x0048 }
        r1 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x0048 }
        r3 = r1.zzd(r3);	 Catch:{ all -> 0x0048 }
        r3 = (java.lang.Boolean) r3;	 Catch:{ all -> 0x0048 }
        r3 = r3.booleanValue();	 Catch:{ all -> 0x0048 }
        if (r3 == 0) goto L_0x0028;
    L_0x0024:
        r2.connect();	 Catch:{ all -> 0x0048 }
        goto L_0x0046;
    L_0x0028:
        r3 = com.google.android.gms.internal.zzmo.zzGj;	 Catch:{ all -> 0x0048 }
        r1 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x0048 }
        r3 = r1.zzd(r3);	 Catch:{ all -> 0x0048 }
        r3 = (java.lang.Boolean) r3;	 Catch:{ all -> 0x0048 }
        r3 = r3.booleanValue();	 Catch:{ all -> 0x0048 }
        if (r3 == 0) goto L_0x0046;
    L_0x003a:
        r3 = new com.google.android.gms.internal.zzhu;	 Catch:{ all -> 0x0048 }
        r3.<init>(r2);	 Catch:{ all -> 0x0048 }
        r1 = com.google.android.gms.ads.internal.zzbs.zzbC();	 Catch:{ all -> 0x0048 }
        r1.zza(r3);	 Catch:{ all -> 0x0048 }
    L_0x0046:
        monitor-exit(r0);	 Catch:{ all -> 0x0048 }
        return;
    L_0x0048:
        r3 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0048 }
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzhs.initialize(android.content.Context):void");
    }

    public final zzhx zza(zzia zzia) {
        synchronized (this.mLock) {
            zzhx zzhx;
            if (this.zzzr == null) {
                zzhx = new zzhx();
                return zzhx;
            }
            try {
                zzhx = this.zzzr.zza(zzia);
                return zzhx;
            } catch (RemoteException e) {
                zzajc.zzb("Unable to call into cache service.", e);
                return new zzhx();
            }
        }
    }

    public final void zzcX() {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzGl)).booleanValue()) {
            synchronized (this.mLock) {
                connect();
                zzbs.zzbz();
                zzagz.zzZr.removeCallbacks(this.zzzp);
                zzbs.zzbz();
                zzagz.zzZr.postDelayed(this.zzzp, ((Long) zzbs.zzbL().zzd(zzmo.zzGm)).longValue());
            }
        }
    }
}
