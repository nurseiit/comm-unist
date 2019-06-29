package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

final class zzajk implements Runnable {
    private /* synthetic */ AtomicInteger zzaaY;
    private /* synthetic */ int zzaaZ;
    private /* synthetic */ zzajg zzaba;
    private /* synthetic */ List zzabb;

    zzajk(AtomicInteger atomicInteger, int i, zzajg zzajg, List list) {
        this.zzaaY = atomicInteger;
        this.zzaaZ = i;
        this.zzaba = zzajg;
        this.zzabb = list;
    }

    public final void run() {
        if (this.zzaaY.incrementAndGet() >= this.zzaaZ) {
            try {
                this.zzaba.zzg(zzaji.zzq(this.zzabb));
            } catch (InterruptedException | ExecutionException e) {
                zzajc.zzc("Unable to convert list of futures to a future of list", e);
            }
        }
    }
}
