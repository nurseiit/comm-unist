package com.google.android.gms.internal;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.concurrent.ScheduledExecutorService;

public final class ps {
    private final wl zzbZE;
    private long zzccm = 1000;
    private double zzcco = 0.5d;
    private double zzccp = 1.3d;
    private final ScheduledExecutorService zzccu;
    private long zzccv = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;

    public ps(ScheduledExecutorService scheduledExecutorService, wm wmVar, String str) {
        this.zzccu = scheduledExecutorService;
        this.zzbZE = new wl(wmVar, str);
    }

    public final pq zzGC() {
        return new pq(this.zzccu, this.zzbZE, this.zzccm, this.zzccv, this.zzccp, this.zzcco, null);
    }

    public final ps zzas(long j) {
        this.zzccm = 1000;
        return this;
    }

    public final ps zzat(long j) {
        this.zzccv = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
        return this;
    }

    public final ps zzh(double d) {
        this.zzccp = 1.3d;
        return this;
    }

    public final ps zzi(double d) {
        this.zzcco = 0.7d;
        return this;
    }
}
