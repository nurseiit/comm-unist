package com.google.android.gms.internal;

final class zzgx implements Runnable {
    private /* synthetic */ zzgw zzyw;

    zzgx(zzgw zzgw) {
        this.zzyw = zzgw;
    }

    public final void run() {
        synchronized (this.zzyw.mLock) {
            if (this.zzyw.zzyq && this.zzyw.zzyr) {
                this.zzyw.zzyq = false;
                zzajc.zzaC("App went background");
                for (zzgy zzf : this.zzyw.zzys) {
                    try {
                        zzf.zzf(false);
                    } catch (Exception e) {
                        zzajc.zzb("OnForegroundStateChangedListener threw exception.", e);
                    }
                }
            } else {
                zzajc.zzaC("App is still foreground");
            }
        }
    }
}
