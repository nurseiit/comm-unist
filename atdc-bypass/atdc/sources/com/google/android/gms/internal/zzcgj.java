package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

final class zzcgj<V> extends FutureTask<V> implements Comparable<zzcgj> {
    private final String zzbsg;
    private /* synthetic */ zzcgg zzbsh;
    private final long zzbsi = zzcgg.zzbsf.getAndIncrement();
    private final boolean zzbsj;

    zzcgj(zzcgg zzcgg, Runnable runnable, boolean z, String str) {
        this.zzbsh = zzcgg;
        super(runnable, null);
        zzbo.zzu(str);
        this.zzbsg = str;
        this.zzbsj = false;
        if (this.zzbsi == Long.MAX_VALUE) {
            zzcgg.zzwF().zzyx().log("Tasks index overflow");
        }
    }

    zzcgj(zzcgg zzcgg, Callable<V> callable, boolean z, String str) {
        this.zzbsh = zzcgg;
        super(callable);
        zzbo.zzu(str);
        this.zzbsg = str;
        this.zzbsj = z;
        if (this.zzbsi == Long.MAX_VALUE) {
            zzcgg.zzwF().zzyx().log("Tasks index overflow");
        }
    }

    public final /* synthetic */ int compareTo(@NonNull Object obj) {
        zzcgj zzcgj = (zzcgj) obj;
        if (this.zzbsj != zzcgj.zzbsj) {
            return this.zzbsj ? -1 : 1;
        } else {
            if (this.zzbsi < zzcgj.zzbsi) {
                return -1;
            }
            if (this.zzbsi > zzcgj.zzbsi) {
                return 1;
            }
            this.zzbsh.zzwF().zzyy().zzj("Two tasks share the same index. index", Long.valueOf(this.zzbsi));
            return 0;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void setException(Throwable th) {
        this.zzbsh.zzwF().zzyx().zzj(this.zzbsg, th);
        if (th instanceof zzcgh) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
