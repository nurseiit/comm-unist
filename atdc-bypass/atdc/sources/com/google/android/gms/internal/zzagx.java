package com.google.android.gms.internal;

import java.util.concurrent.Future;

final class zzagx implements Runnable {
    private /* synthetic */ zzajg zzZn;
    private /* synthetic */ Future zzZp;

    zzagx(zzajg zzajg, Future future) {
        this.zzZn = zzajg;
        this.zzZp = future;
    }

    public final void run() {
        if (this.zzZn.isCancelled()) {
            this.zzZp.cancel(true);
        }
    }
}
