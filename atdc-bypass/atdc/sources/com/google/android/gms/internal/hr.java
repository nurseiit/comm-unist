package com.google.android.gms.internal;

final class hr implements Runnable {
    private /* synthetic */ hp zzbUv;

    hr(hp hpVar) {
        this.zzbUv = hpVar;
    }

    public final void run() {
        this.zzbUv.doFrame(System.nanoTime());
    }
}
