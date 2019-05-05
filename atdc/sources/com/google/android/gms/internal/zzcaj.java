package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class zzcaj {
    private Object zzbbF = new Object();
    private Handler zzbbG;
    private boolean zzbbH;
    private HashMap<String, AtomicInteger> zzbbI;
    private int zzbbJ;

    public zzcaj(Looper looper, int i) {
        this.zzbbG = new Handler(looper);
        this.zzbbI = new HashMap();
        this.zzbbJ = 1000;
    }

    private final void zzuX() {
        synchronized (this.zzbbF) {
            this.zzbbH = false;
            flush();
        }
    }

    public final void flush() {
        synchronized (this.zzbbF) {
            for (Entry entry : this.zzbbI.entrySet()) {
                zzq((String) entry.getKey(), ((AtomicInteger) entry.getValue()).get());
            }
            this.zzbbI.clear();
        }
    }

    public abstract void zzq(String str, int i);

    public final void zzr(String str, int i) {
        synchronized (this.zzbbF) {
            if (!this.zzbbH) {
                this.zzbbH = true;
                this.zzbbG.postDelayed(new zzcak(this), (long) this.zzbbJ);
            }
            AtomicInteger atomicInteger = (AtomicInteger) this.zzbbI.get(str);
            if (atomicInteger == null) {
                atomicInteger = new AtomicInteger();
                this.zzbbI.put(str, atomicInteger);
            }
            atomicInteger.addAndGet(i);
        }
    }
}
