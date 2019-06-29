package com.google.android.gms.internal;

import android.content.ComponentName;

final class zzamr implements Runnable {
    private /* synthetic */ ComponentName val$name;
    private /* synthetic */ zzamp zzago;

    zzamr(zzamp zzamp, ComponentName componentName) {
        this.zzago = zzamp;
        this.val$name = componentName;
    }

    public final void run() {
        this.zzago.zzagk.onServiceDisconnected(this.val$name);
    }
}
