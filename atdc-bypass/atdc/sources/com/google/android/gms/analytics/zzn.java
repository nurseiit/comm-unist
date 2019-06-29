package com.google.android.gms.analytics;

import android.util.Log;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.concurrent.FutureTask;

final class zzn extends FutureTask<T> {
    private /* synthetic */ zza zzael;

    zzn(zza zza, Runnable runnable, Object obj) {
        this.zzael = zza;
        super(runnable, obj);
    }

    /* Access modifiers changed, original: protected|final */
    public final void setException(Throwable th) {
        UncaughtExceptionHandler zzb = zzl.this.zzaei;
        if (zzb != null) {
            zzb.uncaughtException(Thread.currentThread(), th);
        } else if (Log.isLoggable("GAv4", 6)) {
            String valueOf = String.valueOf(th);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 37);
            stringBuilder.append("MeasurementExecutor: job failed with ");
            stringBuilder.append(valueOf);
            Log.e("GAv4", stringBuilder.toString());
        }
        super.setException(th);
    }
}
