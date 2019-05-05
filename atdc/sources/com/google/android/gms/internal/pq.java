package com.google.android.gms.internal;

import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class pq {
    private final Random random;
    private final wl zzbZE;
    private final ScheduledExecutorService zzbZs;
    private final long zzccm;
    private final long zzccn;
    private final double zzcco;
    private final double zzccp;
    private ScheduledFuture<?> zzccq;
    private long zzccr;
    private boolean zzccs;

    private pq(ScheduledExecutorService scheduledExecutorService, wl wlVar, long j, long j2, double d, double d2) {
        this.random = new Random();
        this.zzccs = true;
        this.zzbZs = scheduledExecutorService;
        this.zzbZE = wlVar;
        this.zzccm = j;
        this.zzccn = j2;
        this.zzccp = d;
        this.zzcco = d2;
    }

    /* synthetic */ pq(ScheduledExecutorService scheduledExecutorService, wl wlVar, long j, long j2, double d, double d2, pr prVar) {
        this(scheduledExecutorService, wlVar, j, j2, d, d2);
    }

    public final void cancel() {
        if (this.zzccq != null) {
            this.zzbZE.zzb("Cancelling existing retry attempt", null, new Object[0]);
            this.zzccq.cancel(false);
            this.zzccq = null;
        } else {
            this.zzbZE.zzb("No existing retry attempt to cancel", null, new Object[0]);
        }
        this.zzccr = 0;
    }

    public final void zzGA() {
        this.zzccs = true;
        this.zzccr = 0;
    }

    public final void zzGB() {
        this.zzccr = this.zzccn;
    }

    public final void zzp(Runnable runnable) {
        pr prVar = new pr(this, runnable);
        if (this.zzccq != null) {
            this.zzbZE.zzb("Cancelling previous scheduled retry", null, new Object[0]);
            this.zzccq.cancel(false);
            this.zzccq = null;
        }
        long j = 0;
        if (!this.zzccs) {
            this.zzccr = this.zzccr == 0 ? this.zzccm : Math.min((long) (((double) this.zzccr) * this.zzccp), this.zzccn);
            j = (long) (((1.0d - this.zzcco) * ((double) this.zzccr)) + ((this.zzcco * ((double) this.zzccr)) * this.random.nextDouble()));
        }
        this.zzccs = false;
        this.zzbZE.zzb("Scheduling retry in %dms", null, Long.valueOf(j));
        this.zzccq = this.zzbZs.schedule(prVar, j, TimeUnit.MILLISECONDS);
    }
}
