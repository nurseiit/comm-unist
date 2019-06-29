package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzbs;
import java.util.concurrent.Callable;

final class zzace implements Callable<zzacb> {
    private /* synthetic */ zzacd zzWf;
    private /* synthetic */ Context zztF;

    zzace(zzacd zzacd, Context context) {
        this.zzWf = zzacd;
        this.zztF = context;
    }

    public final /* synthetic */ Object call() throws Exception {
        zzacb zzgM;
        zzacf zzacf = (zzacf) this.zzWf.zzWe.get(this.zztF);
        if (zzacf != null) {
            if ((zzacf.zzWg + ((Long) zzbs.zzbL().zzd(zzmo.zzEu)).longValue() < zzbs.zzbF().currentTimeMillis() ? 1 : null) == null) {
                if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEt)).booleanValue()) {
                    zzgM = new zzacc(this.zztF, zzacf.zzWh).zzgM();
                    this.zzWf.zzWe.put(this.zztF, new zzacf(this.zzWf, zzgM));
                    return zzgM;
                }
            }
        }
        zzgM = new zzacc(this.zztF).zzgM();
        this.zzWf.zzWe.put(this.zztF, new zzacf(this.zzWf, zzgM));
        return zzgM;
    }
}
