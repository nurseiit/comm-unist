package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class zzaey implements ThreadFactory {
    private final AtomicInteger zzXJ = new AtomicInteger(1);

    zzaey(zzaew zzaew) {
    }

    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.zzXJ.getAndIncrement();
        StringBuilder stringBuilder = new StringBuilder(42);
        stringBuilder.append("AdWorker(SCION_TASK_EXECUTOR) #");
        stringBuilder.append(andIncrement);
        return new Thread(runnable, stringBuilder.toString());
    }
}
