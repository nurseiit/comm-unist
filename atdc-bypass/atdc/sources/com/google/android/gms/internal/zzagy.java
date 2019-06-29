package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class zzagy implements ThreadFactory {
    private final AtomicInteger zzXJ = new AtomicInteger(1);
    private /* synthetic */ String zzZq;

    zzagy(String str) {
        this.zzZq = str;
    }

    public final Thread newThread(Runnable runnable) {
        String str = this.zzZq;
        int andIncrement = this.zzXJ.getAndIncrement();
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 23);
        stringBuilder.append("AdWorker(");
        stringBuilder.append(str);
        stringBuilder.append(") #");
        stringBuilder.append(andIncrement);
        return new Thread(runnable, stringBuilder.toString());
    }
}
