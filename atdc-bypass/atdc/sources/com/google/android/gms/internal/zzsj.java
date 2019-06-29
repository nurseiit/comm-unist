package com.google.android.gms.internal;

import android.os.Handler;
import java.util.LinkedList;
import java.util.List;

@zzzn
final class zzsj {
    private final List<zzth> zztH = new LinkedList();

    zzsj() {
    }

    /* Access modifiers changed, original: final */
    public final void zza(zzti zzti) {
        Handler handler = zzagz.zzZr;
        for (zzth zztg : this.zztH) {
            handler.post(new zztg(this, zztg, zzti));
        }
        this.zztH.clear();
    }
}
