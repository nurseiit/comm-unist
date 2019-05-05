package com.google.android.gms.internal;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;

public final class zzcua {
    private static Object zzbDk = new Object();
    private static zzcua zzbHF;
    private volatile boolean mClosed;
    private final Context mContext;
    private final Thread zzYV;
    private volatile Info zzafw;
    private volatile long zzbDe;
    private volatile long zzbDf;
    private volatile long zzbDg;
    private volatile long zzbDh;
    private final Object zzbDi;
    private volatile boolean zzbHD;
    private zzcud zzbHE;
    private final zze zzvw;

    private zzcua(Context context) {
        this(context, null, zzi.zzrY());
    }

    private zzcua(Context context, zzcud zzcud, zze zze) {
        this.zzbDe = 900000;
        this.zzbDf = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
        this.zzbHD = true;
        this.mClosed = false;
        this.zzbDi = new Object();
        this.zzbHE = new zzcub(this);
        this.zzvw = zze;
        if (context != null) {
            context = context.getApplicationContext();
        }
        this.mContext = context;
        this.zzbDg = this.zzvw.currentTimeMillis();
        this.zzYV = new Thread(new zzcuc(this));
    }

    private final void zzAA() {
        if (this.zzvw.currentTimeMillis() - this.zzbDg > this.zzbDf) {
            synchronized (this.zzbDi) {
                this.zzbDi.notify();
            }
            this.zzbDg = this.zzvw.currentTimeMillis();
        }
    }

    private final void zzAB() {
        if (this.zzvw.currentTimeMillis() - this.zzbDh > 3600000) {
            this.zzafw = null;
        }
    }

    private final void zzAC() {
        Process.setThreadPriority(10);
        while (true) {
            boolean z = this.mClosed;
            Info info = null;
            if (this.zzbHD) {
                info = this.zzbHE.zzAD();
            }
            if (info != null) {
                this.zzafw = info;
                this.zzbDh = this.zzvw.currentTimeMillis();
                zzcvk.zzaS("Obtained fresh AdvertisingId info from GmsCore.");
            }
            synchronized (this) {
                notifyAll();
            }
            try {
                synchronized (this.zzbDi) {
                    this.zzbDi.wait(this.zzbDe);
                }
            } catch (InterruptedException unused) {
                zzcvk.zzaS("sleep interrupted in AdvertiserDataPoller thread; continuing");
            }
        }
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:4:0x000c */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    private final void zzAz() {
        /*
        r2 = this;
        monitor-enter(r2);
        r2.zzAA();	 Catch:{ InterruptedException -> 0x000c }
        r0 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r2.wait(r0);	 Catch:{ InterruptedException -> 0x000c }
        goto L_0x000c;
    L_0x000a:
        r0 = move-exception;
        goto L_0x000e;
    L_0x000c:
        monitor-exit(r2);	 Catch:{ all -> 0x000a }
        return;
    L_0x000e:
        monitor-exit(r2);	 Catch:{ all -> 0x000a }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcua.zzAz():void");
    }

    public static zzcua zzbu(Context context) {
        if (zzbHF == null) {
            synchronized (zzbDk) {
                if (zzbHF == null) {
                    zzcua zzcua = new zzcua(context);
                    zzbHF = zzcua;
                    zzcua.zzYV.start();
                }
            }
        }
        return zzbHF;
    }

    public final boolean isLimitAdTrackingEnabled() {
        if (this.zzafw == null) {
            zzAz();
        } else {
            zzAA();
        }
        zzAB();
        return this.zzafw == null ? true : this.zzafw.isLimitAdTrackingEnabled();
    }

    public final String zzAy() {
        if (this.zzafw == null) {
            zzAz();
        } else {
            zzAA();
        }
        zzAB();
        return this.zzafw == null ? null : this.zzafw.getId();
    }
}
