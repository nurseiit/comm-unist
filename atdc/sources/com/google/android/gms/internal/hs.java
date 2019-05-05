package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;

final class hs extends hn {
    private Handler handler;

    public hs(Looper looper) {
        this.handler = new Handler(looper);
    }

    public final void zza(hp hpVar) {
        this.handler.postDelayed(hpVar.zzEf(), 0);
    }
}
