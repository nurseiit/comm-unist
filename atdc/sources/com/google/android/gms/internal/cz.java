package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class cz {
    private boolean mClosed;
    private String zzbEa;
    private final ScheduledExecutorService zzbFY;
    private ScheduledFuture<?> zzbGa;

    public cz() {
        this(Executors.newSingleThreadScheduledExecutor());
    }

    private cz(ScheduledExecutorService scheduledExecutorService) {
        this.zzbGa = null;
        this.zzbEa = null;
        this.zzbFY = scheduledExecutorService;
        this.mClosed = false;
    }

    public final void zza(Context context, cl clVar, long j, cc ccVar) {
        synchronized (this) {
            if (this.zzbGa != null) {
                this.zzbGa.cancel(false);
            }
            this.zzbGa = this.zzbFY.schedule(new cy(context, clVar, ccVar), 0, TimeUnit.MILLISECONDS);
        }
    }
}
