package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;

final class zzaxf implements zzayt {
    private /* synthetic */ zzawy zzaxj;
    private /* synthetic */ zzaxe zzaxk;

    zzaxf(zzaxe zzaxe, zzawy zzawy) {
        this.zzaxk = zzaxe;
        this.zzaxj = zzawy;
    }

    public final void zza(long j, int i, Object obj) {
        if (obj == null) {
            try {
                this.zzaxk.setResult(new zzaxk(new Status(i, null, null), null, j, null));
                return;
            } catch (ClassCastException unused) {
                this.zzaxk.setResult(zzaxe.zzj(new Status(13)));
                return;
            }
        }
        zzaxm zzaxm = (zzaxm) obj;
        String str = zzaxm.zzaxn;
        if (i == 0 && str != null) {
            this.zzaxk.zzaxd.zzaxc = str;
        }
        this.zzaxk.setResult(new zzaxk(new Status(i, zzaxm.zzaxv, null), str, zzaxm.zzaxo, zzaxm.zzaxp));
    }

    public final void zzx(long j) {
        this.zzaxk.setResult(zzaxe.zzj(new Status(2103)));
    }
}
