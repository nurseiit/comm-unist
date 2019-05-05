package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

@zzzn
final class zzajn {
    private final Object zzabc = new Object();
    private final List<Runnable> zzabd = new ArrayList();
    private final List<Runnable> zzabe = new ArrayList();
    private boolean zzabf = false;

    private static void zze(Runnable runnable) {
        zzaiy.zzaaH.post(runnable);
    }

    public final void zzc(Runnable runnable) {
        synchronized (this.zzabc) {
            if (this.zzabf) {
                zzagt.zza(runnable);
            } else {
                this.zzabd.add(runnable);
            }
        }
    }

    public final void zzd(Runnable runnable) {
        synchronized (this.zzabc) {
            if (this.zzabf) {
                zze(runnable);
            } else {
                this.zzabe.add(runnable);
            }
        }
    }

    public final void zzin() {
        synchronized (this.zzabc) {
            if (this.zzabf) {
                return;
            }
            for (Runnable zza : this.zzabd) {
                zzagt.zza(zza);
            }
            for (Runnable zza2 : this.zzabe) {
                zze(zza2);
            }
            this.zzabd.clear();
            this.zzabe.clear();
            this.zzabf = true;
        }
    }
}
