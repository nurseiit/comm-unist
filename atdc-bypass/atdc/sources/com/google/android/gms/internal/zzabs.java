package com.google.android.gms.internal;

import java.util.concurrent.Future;

final class zzabs implements Runnable {
    private /* synthetic */ Future zzUJ;

    zzabs(zzabm zzabm, Future future) {
        this.zzUJ = future;
    }

    public final void run() {
        if (!this.zzUJ.isDone()) {
            this.zzUJ.cancel(true);
        }
    }
}
