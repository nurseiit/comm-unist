package com.google.android.gms.internal;

final class rz implements Runnable {
    private /* synthetic */ qu zzcdI;

    rz(qu quVar) {
        this.zzcdI = quVar;
    }

    public final void run() {
        this.zzcdI.interrupt();
    }
}
