package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;

final class tl implements ThreadFactory {
    private /* synthetic */ ThreadFactory zzcfj;
    private /* synthetic */ ti zzcfk;

    tl(tk tkVar, ThreadFactory threadFactory, ti tiVar) {
        this.zzcfj = threadFactory;
        this.zzcfk = tiVar;
    }

    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.zzcfj.newThread(runnable);
        this.zzcfk.zza(newThread, "FirebaseDatabaseEventTarget");
        this.zzcfk.zza(newThread, true);
        return newThread;
    }
}
