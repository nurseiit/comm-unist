package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.zzl;
import com.google.android.gms.common.internal.zzbo;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class zzaly extends zzamh {
    private final zzamv zzafB;

    public zzaly(zzamj zzamj, zzaml zzaml) {
        super(zzamj);
        zzbo.zzu(zzaml);
        this.zzafB = new zzamv(zzamj, zzaml);
    }

    /* Access modifiers changed, original: final */
    public final void onServiceConnected() {
        zzl.zzjC();
        this.zzafB.onServiceConnected();
    }

    public final void setLocalDispatchPeriod(int i) {
        zzkD();
        zzb("setLocalDispatchPeriod (sec)", Integer.valueOf(i));
        zzkt().zzf(new zzalz(this, i));
    }

    public final void start() {
        this.zzafB.start();
    }

    public final long zza(zzamm zzamm) {
        zzkD();
        zzbo.zzu(zzamm);
        zzl.zzjC();
        long zza = this.zzafB.zza(zzamm, true);
        if (zza == 0) {
            this.zzafB.zzb(zzamm);
        }
        return zza;
    }

    public final void zza(zzanq zzanq) {
        zzkD();
        zzkt().zzf(new zzame(this, zzanq));
    }

    public final void zza(zzanx zzanx) {
        zzbo.zzu(zzanx);
        zzkD();
        zzb("Hit delivery requested", zzanx);
        zzkt().zzf(new zzamc(this, zzanx));
    }

    public final void zza(String str, Runnable runnable) {
        zzbo.zzh(str, "campaign param can't be empty");
        zzkt().zzf(new zzamb(this, str, runnable));
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
        this.zzafB.initialize();
    }

    public final void zzkk() {
        zzkD();
        zzkt().zzf(new zzamd(this));
    }

    public final void zzkl() {
        zzkD();
        Context context = getContext();
        if (zzaoj.zzac(context) && zzaok.zzad(context)) {
            Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            intent.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
            context.startService(intent);
            return;
        }
        zza(null);
    }

    public final boolean zzkm() {
        zzkD();
        try {
            zzkt().zzd(new zzamf(this)).get(4, TimeUnit.SECONDS);
            return true;
        } catch (InterruptedException e) {
            zzd("syncDispatchLocalHits interrupted", e);
            return false;
        } catch (ExecutionException e2) {
            zze("syncDispatchLocalHits failed", e2);
            return false;
        } catch (TimeoutException e3) {
            zzd("syncDispatchLocalHits timed out", e3);
            return false;
        }
    }

    public final void zzkn() {
        zzkD();
        zzl.zzjC();
        zzamv zzamv = this.zzafB;
        zzl.zzjC();
        zzamv.zzkD();
        zzamv.zzbo("Service disconnected");
    }

    /* Access modifiers changed, original: final */
    public final void zzko() {
        zzl.zzjC();
        this.zzafB.zzko();
    }
}
