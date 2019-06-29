package com.google.android.gms.internal;

import android.os.Process;
import com.google.android.gms.ads.internal.zzbs;
import java.util.concurrent.Callable;

final class zzagw implements Runnable {
    private /* synthetic */ zzajg zzZn;
    private /* synthetic */ Callable zzZo;

    zzagw(zzajg zzajg, Callable callable) {
        this.zzZn = zzajg;
        this.zzZo = callable;
    }

    public final void run() {
        try {
            Process.setThreadPriority(10);
            this.zzZn.zzg(this.zzZo.call());
        } catch (Exception e) {
            zzbs.zzbD().zza(e, "AdThreadPool.submit");
            this.zzZn.zzb(e);
        }
    }
}
