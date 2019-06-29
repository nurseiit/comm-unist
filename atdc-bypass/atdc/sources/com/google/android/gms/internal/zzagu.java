package com.google.android.gms.internal;

import java.util.concurrent.Callable;

final class zzagu implements Callable<Void> {
    private /* synthetic */ Runnable zzZm;

    zzagu(Runnable runnable) {
        this.zzZm = runnable;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.zzZm.run();
        return null;
    }
}
