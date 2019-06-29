package com.google.android.gms.ads.internal.overlay;

import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzzn;

@zzzn
final class zzas implements Runnable {
    private zzaa zzQK;
    private boolean zzyr = false;

    zzas(zzaa zzaa) {
        this.zzQK = zzaa;
    }

    private final void zzgl() {
        zzagz.zzZr.removeCallbacks(this);
        zzagz.zzZr.postDelayed(this, 250);
    }

    public final void pause() {
        this.zzyr = true;
    }

    public final void resume() {
        this.zzyr = false;
        zzgl();
    }

    public final void run() {
        if (!this.zzyr) {
            this.zzQK.zzgc();
            zzgl();
        }
    }
}
