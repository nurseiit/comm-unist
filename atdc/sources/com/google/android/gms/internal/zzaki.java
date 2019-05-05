package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.overlay.zzw;

final class zzaki implements zzw {
    private zzaka zzabK;
    private zzw zzabq;

    public zzaki(zzaka zzaka, zzw zzw) {
        this.zzabK = zzaka;
        this.zzabq = zzw;
    }

    public final void onPause() {
    }

    public final void onResume() {
    }

    public final void zzaA() {
        this.zzabq.zzaA();
        this.zzabK.zziq();
    }

    public final void zzaB() {
        this.zzabq.zzaB();
        this.zzabK.zzfP();
    }
}
