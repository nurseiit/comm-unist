package com.google.android.gms.internal;

import android.content.Context;
import android.content.IntentFilter;

final class zzcwd extends zzcwc {
    private static final Object zzbGC = new Object();
    private static zzcwd zzbIZ;
    private boolean connected = true;
    private Context zzbGD;
    private int zzbGG = 1800000;
    private boolean zzbGH = true;
    private boolean zzbGI = false;
    private boolean zzbGJ = true;
    private boolean zzbGN = false;
    private zzcvb zzbIT;
    private volatile zzcuy zzbIU;
    private boolean zzbIV = false;
    private zzcvc zzbIW = new zzcwe(this);
    private zzcwg zzbIX;
    private zzcvm zzbIY;

    private zzcwd() {
    }

    private final boolean isPowerSaveMode() {
        return this.zzbGN || !this.connected || this.zzbGG <= 0;
    }

    public static zzcwd zzCA() {
        if (zzbIZ == null) {
            zzbIZ = new zzcwd();
        }
        return zzbIZ;
    }

    /* JADX WARNING: Missing block: B:12:0x0020, code skipped:
            return;
     */
    public final synchronized void dispatch() {
        /*
        r2 = this;
        monitor-enter(r2);
        r0 = r2.zzbGI;	 Catch:{ all -> 0x0021 }
        r1 = 1;
        if (r0 != 0) goto L_0x000f;
    L_0x0006:
        r0 = "Dispatch call queued. Dispatch will run once initialization is complete.";
        com.google.android.gms.internal.zzcvk.v(r0);	 Catch:{ all -> 0x0021 }
        r2.zzbGH = r1;	 Catch:{ all -> 0x0021 }
        monitor-exit(r2);
        return;
    L_0x000f:
        r0 = r2.zzbIV;	 Catch:{ all -> 0x0021 }
        if (r0 != 0) goto L_0x001f;
    L_0x0013:
        r2.zzbIV = r1;	 Catch:{ all -> 0x0021 }
        r0 = r2.zzbIU;	 Catch:{ all -> 0x0021 }
        r1 = new com.google.android.gms.internal.zzcwf;	 Catch:{ all -> 0x0021 }
        r1.<init>(r2);	 Catch:{ all -> 0x0021 }
        r0.zzn(r1);	 Catch:{ all -> 0x0021 }
    L_0x001f:
        monitor-exit(r2);
        return;
    L_0x0021:
        r0 = move-exception;
        monitor-exit(r2);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcwd.dispatch():void");
    }

    public final synchronized void zzBU() {
        if (!isPowerSaveMode()) {
            this.zzbIX.zzBY();
        }
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized zzcvb zzCB() {
        if (this.zzbIT == null) {
            if (this.zzbGD == null) {
                throw new IllegalStateException("Cant get a store unless we have a context");
            }
            this.zzbIT = new zzcvn(this.zzbIW, this.zzbGD);
        }
        if (this.zzbIX == null) {
            this.zzbIX = new zzcwh(this, null);
            if (this.zzbGG > 0) {
                this.zzbIX.zzs((long) this.zzbGG);
            }
        }
        this.zzbGI = true;
        if (this.zzbGH) {
            dispatch();
            this.zzbGH = false;
        }
        if (this.zzbIY == null && this.zzbGJ) {
            this.zzbIY = new zzcvm(this);
            zzcvm zzcvm = this.zzbIY;
            Context context = this.zzbGD;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            context.registerReceiver(zzcvm, intentFilter);
            intentFilter = new IntentFilter();
            intentFilter.addAction("com.google.analytics.RADIO_POWERED");
            intentFilter.addCategory(context.getPackageName());
            context.registerReceiver(zzcvm, intentFilter);
        }
        return this.zzbIT;
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    /* JADX WARNING: Missing block: B:11:0x0014, code skipped:
            return;
     */
    public final synchronized void zza(android.content.Context r2, com.google.android.gms.internal.zzcuy r3) {
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
        r2 = r1.zzbIU;	 Catch:{ all -> 0x0015 }
        if (r2 != 0) goto L_0x0013;
    L_0x0011:
        r1.zzbIU = r3;	 Catch:{ all -> 0x0015 }
    L_0x0013:
        monitor-exit(r1);
        return;
    L_0x0015:
        r2 = move-exception;
        monitor-exit(r1);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcwd.zza(android.content.Context, com.google.android.gms.internal.zzcuy):void");
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
                this.zzbIX.cancel();
                zzcvk.v("PowerSaveMode initiated.");
                return;
            }
            this.zzbIX.zzs((long) this.zzbGG);
            zzcvk.v("PowerSaveMode terminated.");
        }
    }
}
