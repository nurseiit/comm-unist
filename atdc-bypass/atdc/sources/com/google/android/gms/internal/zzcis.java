package com.google.android.gms.internal;

import android.content.ComponentName;

final class zzcis implements Runnable {
    private /* synthetic */ ComponentName val$name;
    private /* synthetic */ zzciq zzbuk;

    zzcis(zzciq zzciq, ComponentName componentName) {
        this.zzbuk = zzciq;
        this.val$name = componentName;
    }

    public final void run() {
        this.zzbuk.zzbua.onServiceDisconnected(this.val$name);
    }
}
