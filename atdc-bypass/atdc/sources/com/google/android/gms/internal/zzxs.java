package com.google.android.gms.internal;

final class zzxs implements Runnable {
    private /* synthetic */ zzxr zzQV;

    zzxs(zzxr zzxr) {
        this.zzQV = zzxr;
    }

    public final void run() {
        if (this.zzQV.zzQU.get()) {
            zzajc.e("Timed out waiting for WebView to finish loading.");
            this.zzQV.cancel();
        }
    }
}
