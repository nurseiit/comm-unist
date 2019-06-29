package com.google.android.gms.internal;

final class zzxu implements Runnable {
    private /* synthetic */ zzxt zzQW;

    zzxu(zzxt zzxt) {
        this.zzQW = zzxt;
    }

    public final void run() {
        this.zzQW.onStop();
    }
}
