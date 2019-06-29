package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzeu;
import java.util.concurrent.Callable;

final class zzbp implements Callable<zzeu> {
    private /* synthetic */ zzbm zzvf;

    zzbp(zzbm zzbm) {
        this.zzvf = zzbm;
    }

    public final /* synthetic */ Object call() throws Exception {
        return new zzeu(this.zzvf.zztW.zzaP, this.zzvf.mContext, false);
    }
}
