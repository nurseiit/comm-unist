package com.google.android.gms.internal;

final class zzalz implements Runnable {
    private /* synthetic */ int zzafC;
    private /* synthetic */ zzaly zzafD;

    zzalz(zzaly zzaly, int i) {
        this.zzafD = zzaly;
        this.zzafC = i;
    }

    public final void run() {
        this.zzafD.zzafB.zzr(((long) this.zzafC) * 1000);
    }
}
