package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzbq;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class zzet implements zzag {
    private boolean mClosed;
    private final Context mContext;
    private String zzbDU;
    private final String zzbDw;
    private zzdi<zzbq> zzbFV;
    private zzal zzbFW;
    private final ScheduledExecutorService zzbFY;
    private final zzew zzbFZ;
    private ScheduledFuture<?> zzbGa;

    public zzet(Context context, String str, zzal zzal) {
        this(context, str, zzal, null, null);
    }

    private zzet(Context context, String str, zzal zzal, zzex zzex, zzew zzew) {
        this.zzbFW = zzal;
        this.mContext = context;
        this.zzbDw = str;
        this.zzbFY = new zzeu(this).zzBH();
        this.zzbFZ = new zzev(this);
    }

    private final synchronized void zzBG() {
        if (this.mClosed) {
            throw new IllegalStateException("called method after closed");
        }
    }

    public final synchronized void release() {
        zzBG();
        if (this.zzbGa != null) {
            this.zzbGa.cancel(false);
        }
        this.zzbFY.shutdown();
        this.mClosed = true;
    }

    public final synchronized void zza(long j, String str) {
        String str2 = this.zzbDw;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str2).length() + 55);
        stringBuilder.append("loadAfterDelay: containerId=");
        stringBuilder.append(str2);
        stringBuilder.append(" delay=");
        stringBuilder.append(j);
        zzdj.v(stringBuilder.toString());
        zzBG();
        if (this.zzbFV == null) {
            throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
        }
        if (this.zzbGa != null) {
            this.zzbGa.cancel(false);
        }
        ScheduledExecutorService scheduledExecutorService = this.zzbFY;
        zzes zza = this.zzbFZ.zza(this.zzbFW);
        zza.zza(this.zzbFV);
        zza.zzfb(this.zzbDU);
        zza.zzfr(str);
        this.zzbGa = scheduledExecutorService.schedule(zza, j, TimeUnit.MILLISECONDS);
    }

    public final synchronized void zza(zzdi<zzbq> zzdi) {
        zzBG();
        this.zzbFV = zzdi;
    }

    public final synchronized void zzfb(String str) {
        zzBG();
        this.zzbDU = str;
    }
}
