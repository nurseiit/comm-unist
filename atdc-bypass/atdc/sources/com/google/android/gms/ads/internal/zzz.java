package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzaff;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzakj;

final class zzz implements zzakj {
    private /* synthetic */ zzaff zztu;
    private /* synthetic */ Runnable zztv;

    zzz(zzx zzx, zzaff zzaff, Runnable runnable) {
        this.zztu = zzaff;
        this.zztv = runnable;
    }

    public final void zzaS() {
        if (!this.zztu.zzXM) {
            zzbs.zzbz();
            zzagz.zzb(this.zztv);
        }
    }
}
