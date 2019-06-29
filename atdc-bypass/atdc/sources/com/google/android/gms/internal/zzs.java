package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public final class zzs {
    private AtomicInteger zzW;
    private final Map<String, Queue<zzp<?>>> zzX;
    private final Set<zzp<?>> zzY;
    private final PriorityBlockingQueue<zzp<?>> zzZ;
    private final PriorityBlockingQueue<zzp<?>> zzaa;
    private zzl[] zzab;
    private zzd zzac;
    private List<Object> zzad;
    private final zzb zzi;
    private final zzw zzj;
    private final zzk zzx;

    public zzs(zzb zzb, zzk zzk) {
        this(zzb, zzk, 4);
    }

    private zzs(zzb zzb, zzk zzk, int i) {
        this(zzb, zzk, 4, new zzh(new Handler(Looper.getMainLooper())));
    }

    private zzs(zzb zzb, zzk zzk, int i, zzw zzw) {
        this.zzW = new AtomicInteger();
        this.zzX = new HashMap();
        this.zzY = new HashSet();
        this.zzZ = new PriorityBlockingQueue();
        this.zzaa = new PriorityBlockingQueue();
        this.zzad = new ArrayList();
        this.zzi = zzb;
        this.zzx = zzk;
        this.zzab = new zzl[4];
        this.zzj = zzw;
    }

    public final void start() {
        if (this.zzac != null) {
            this.zzac.quit();
        }
        for (int i = 0; i < this.zzab.length; i++) {
            if (this.zzab[i] != null) {
                this.zzab[i].quit();
            }
        }
        this.zzac = new zzd(this.zzZ, this.zzaa, this.zzi, this.zzj);
        this.zzac.start();
        for (int i2 = 0; i2 < this.zzab.length; i2++) {
            zzl zzl = new zzl(this.zzaa, this.zzx, this.zzi, this.zzj);
            this.zzab[i2] = zzl;
            zzl.start();
        }
    }

    public final <T> zzp<T> zzc(zzp<T> zzp) {
        zzp.zza(this);
        synchronized (this.zzY) {
            this.zzY.add(zzp);
        }
        zzp.zza(this.zzW.incrementAndGet());
        zzp.zzb("add-to-queue");
        if (zzp.zzh()) {
            synchronized (this.zzX) {
                String zzd = zzp.zzd();
                if (this.zzX.containsKey(zzd)) {
                    Queue queue = (Queue) this.zzX.get(zzd);
                    if (queue == null) {
                        queue = new LinkedList();
                    }
                    queue.add(zzp);
                    this.zzX.put(zzd, queue);
                    if (zzab.DEBUG) {
                        zzab.zza("Request for cacheKey=%s is in flight, putting on hold.", zzd);
                    }
                } else {
                    this.zzX.put(zzd, null);
                    this.zzZ.add(zzp);
                }
            }
            return zzp;
        }
        this.zzaa.add(zzp);
        return zzp;
    }

    /* Access modifiers changed, original: final */
    public final <T> void zzd(zzp<T> zzp) {
        synchronized (this.zzY) {
            this.zzY.remove(zzp);
        }
        synchronized (this.zzad) {
            Iterator it = this.zzad.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        if (zzp.zzh()) {
            synchronized (this.zzX) {
                Queue queue = (Queue) this.zzX.remove(zzp.zzd());
                if (queue != null) {
                    if (zzab.DEBUG) {
                        zzab.zza("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(queue.size()), r7);
                    }
                    this.zzZ.addAll(queue);
                }
            }
        }
    }
}
