package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.IntentFilter;

final class zzfo extends zzfn {
    private static final Object zzbGC = new Object();
    private static zzfo zzbGO;
    private boolean connected = true;
    private Context zzbGD;
    private zzcc zzbGE;
    private volatile zzbz zzbGF;
    private int zzbGG = 1800000;
    private boolean zzbGH = true;
    private boolean zzbGI = false;
    private boolean zzbGJ = true;
    private zzcd zzbGK = new zzfp(this);
    private zzfr zzbGL;
    private zzdo zzbGM;
    private boolean zzbGN = false;

    private zzfo() {
    }

    private final boolean isPowerSaveMode() {
        return this.zzbGN || !this.connected || this.zzbGG <= 0;
    }

    public static zzfo zzBV() {
        if (zzbGO == null) {
            zzbGO = new zzfo();
        }
        return zzbGO;
    }

    public final synchronized void dispatch() {
        if (this.zzbGI) {
            this.zzbGF.zzn(new zzfq(this));
            return;
        }
        zzdj.v("Dispatch call queued. Dispatch will run once initialization is complete.");
        this.zzbGH = true;
    }

    public final synchronized void zzBU() {
        if (!isPowerSaveMode()) {
            this.zzbGL.zzBY();
        }
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized zzcc zzBW() {
        if (this.zzbGE == null) {
            if (this.zzbGD == null) {
                throw new IllegalStateException("Cant get a store unless we have a context");
            }
            this.zzbGE = new zzec(this.zzbGK, this.zzbGD);
        }
        if (this.zzbGL == null) {
            this.zzbGL = new zzfs(this, null);
            if (this.zzbGG > 0) {
                this.zzbGL.zzs((long) this.zzbGG);
            }
        }
        this.zzbGI = true;
        if (this.zzbGH) {
            dispatch();
            this.zzbGH = false;
        }
        if (this.zzbGM == null && this.zzbGJ) {
            this.zzbGM = new zzdo(this);
            zzdo zzdo = this.zzbGM;
            Context context = this.zzbGD;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            context.registerReceiver(zzdo, intentFilter);
            intentFilter = new IntentFilter();
            intentFilter.addAction("com.google.analytics.RADIO_POWERED");
            intentFilter.addCategory(context.getPackageName());
            context.registerReceiver(zzdo, intentFilter);
        }
        return this.zzbGE;
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    /* JADX WARNING: Missing block: B:11:0x0014, code skipped:
            return;
     */
    public final synchronized void zza(android.content.Context r2, com.google.android.gms.tagmanager.zzbz r3) {
        /*
        r1 = this;
        monitor-enter(r1);
        r0 = r1.zzbGD;	 Catch:{ all -> 0x0015 }
        if (r0 == 0) goto L_0x0007;
    L_0x0005:
        monitor-exit(r1);
        return;
    L_0x0007:
        r2 = r2.getApplicationContext();	 Catch:{ all -> 0x0015 }
        r1.zzbGD = r2;	 Catch:{ all -> 0x0015 }
        r2 = r1.zzbGF;	 Catch:{ all -> 0x0015 }
        if (r2 != 0) goto L_0x0013;
    L_0x0011:
        r1.zzbGF = r3;	 Catch:{ all -> 0x0015 }
    L_0x0013:
        monitor-exit(r1);
        return;
    L_0x0015:
        r2 = move-exception;
        monitor-exit(r1);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzfo.zza(android.content.Context, com.google.android.gms.tagmanager.zzbz):void");
    }

    public final synchronized void zzas(boolean z) {
        zzd(this.zzbGN, z);
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized void zzd(boolean z, boolean z2) {
        boolean isPowerSaveMode = isPowerSaveMode();
        this.zzbGN = z;
        this.connected = z2;
        if (isPowerSaveMode() != isPowerSaveMode) {
            if (isPowerSaveMode()) {
                this.zzbGL.cancel();
                zzdj.v("PowerSaveMode initiated.");
                return;
            }
            this.zzbGL.zzs((long) this.zzbGG);
            zzdj.v("PowerSaveMode terminated.");
        }
    }
}
