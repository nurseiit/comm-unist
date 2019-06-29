package com.google.android.gms.internal;

import android.support.annotation.Nullable;

@zzzn
public final class zzud extends zzux {
    private final Object mLock = new Object();
    private zzui zzMq;
    private zzuc zzMr;

    public final void onAdClicked() {
        synchronized (this.mLock) {
            if (this.zzMr != null) {
                this.zzMr.zzaC();
            }
        }
    }

    public final void onAdClosed() {
        synchronized (this.mLock) {
            if (this.zzMr != null) {
                this.zzMr.zzaD();
            }
        }
    }

    public final void onAdFailedToLoad(int i) {
        synchronized (this.mLock) {
            if (this.zzMq != null) {
                this.zzMq.zzo(i == 3 ? 1 : 2);
                this.zzMq = null;
            }
        }
    }

    public final void onAdImpression() {
        synchronized (this.mLock) {
            if (this.zzMr != null) {
                this.zzMr.zzaH();
            }
        }
    }

    public final void onAdLeftApplication() {
        synchronized (this.mLock) {
            if (this.zzMr != null) {
                this.zzMr.zzaE();
            }
        }
    }

    /* JADX WARNING: Missing block: B:12:0x001c, code skipped:
            return;
     */
    public final void onAdLoaded() {
        /*
        r3 = this;
        r0 = r3.mLock;
        monitor-enter(r0);
        r1 = r3.zzMq;	 Catch:{ all -> 0x001d }
        if (r1 == 0) goto L_0x0012;
    L_0x0007:
        r1 = r3.zzMq;	 Catch:{ all -> 0x001d }
        r2 = 0;
        r1.zzo(r2);	 Catch:{ all -> 0x001d }
        r1 = 0;
        r3.zzMq = r1;	 Catch:{ all -> 0x001d }
        monitor-exit(r0);	 Catch:{ all -> 0x001d }
        return;
    L_0x0012:
        r1 = r3.zzMr;	 Catch:{ all -> 0x001d }
        if (r1 == 0) goto L_0x001b;
    L_0x0016:
        r1 = r3.zzMr;	 Catch:{ all -> 0x001d }
        r1.zzaG();	 Catch:{ all -> 0x001d }
    L_0x001b:
        monitor-exit(r0);	 Catch:{ all -> 0x001d }
        return;
    L_0x001d:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x001d }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzud.onAdLoaded():void");
    }

    public final void onAdOpened() {
        synchronized (this.mLock) {
            if (this.zzMr != null) {
                this.zzMr.zzaF();
            }
        }
    }

    public final void onAppEvent(String str, String str2) {
        synchronized (this.mLock) {
            if (this.zzMr != null) {
                this.zzMr.zze(str, str2);
            }
        }
    }

    public final void zza(@Nullable zzuc zzuc) {
        synchronized (this.mLock) {
            this.zzMr = zzuc;
        }
    }

    public final void zza(zzui zzui) {
        synchronized (this.mLock) {
            this.zzMq = zzui;
        }
    }

    /* JADX WARNING: Missing block: B:12:0x001c, code skipped:
            return;
     */
    public final void zza(com.google.android.gms.internal.zzuz r4) {
        /*
        r3 = this;
        r0 = r3.mLock;
        monitor-enter(r0);
        r1 = r3.zzMq;	 Catch:{ all -> 0x001d }
        if (r1 == 0) goto L_0x0012;
    L_0x0007:
        r1 = r3.zzMq;	 Catch:{ all -> 0x001d }
        r2 = 0;
        r1.zza(r2, r4);	 Catch:{ all -> 0x001d }
        r4 = 0;
        r3.zzMq = r4;	 Catch:{ all -> 0x001d }
        monitor-exit(r0);	 Catch:{ all -> 0x001d }
        return;
    L_0x0012:
        r4 = r3.zzMr;	 Catch:{ all -> 0x001d }
        if (r4 == 0) goto L_0x001b;
    L_0x0016:
        r4 = r3.zzMr;	 Catch:{ all -> 0x001d }
        r4.zzaG();	 Catch:{ all -> 0x001d }
    L_0x001b:
        monitor-exit(r0);	 Catch:{ all -> 0x001d }
        return;
    L_0x001d:
        r4 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x001d }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzud.zza(com.google.android.gms.internal.zzuz):void");
    }

    public final void zzb(zzpj zzpj, String str) {
        synchronized (this.mLock) {
            if (this.zzMr != null) {
                this.zzMr.zza(zzpj, str);
            }
        }
    }
}
