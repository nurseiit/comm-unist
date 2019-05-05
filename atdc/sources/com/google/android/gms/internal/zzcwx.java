package com.google.android.gms.internal;

final class zzcwx implements Runnable {
    private /* synthetic */ zzcww zzbJA;

    zzcwx(zzcww zzcww) {
        this.zzbJA = zzcww;
    }

    public final void run() {
        zzcvk.v("App's UI deactivated. Dispatching hits.");
        this.zzbJA.zzbJp.zzbJg.dispatch();
    }
}
