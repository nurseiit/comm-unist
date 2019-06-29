package com.google.android.gms.internal;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@zzzn
public class zzajt<T> implements zzajp<T> {
    private final Object mLock = new Object();
    private int zzLe = 0;
    private BlockingQueue<zzaju> zzabg = new LinkedBlockingQueue();
    private T zzabh;

    public int getStatus() {
        return this.zzLe;
    }

    public void reject() {
        synchronized (this.mLock) {
            if (this.zzLe != 0) {
                throw new UnsupportedOperationException();
            }
            this.zzLe = -1;
            for (zzaju zzaju : this.zzabg) {
                zzaju.zzabj.run();
            }
            this.zzabg.clear();
        }
    }

    public void zza(zzajs<T> zzajs, zzajq zzajq) {
        synchronized (this.mLock) {
            if (this.zzLe == 1) {
                zzajs.zzc(this.zzabh);
            } else if (this.zzLe == -1) {
                zzajq.run();
            } else if (this.zzLe == 0) {
                this.zzabg.add(new zzaju(this, zzajs, zzajq));
            }
        }
    }

    public void zzf(T t) {
        synchronized (this.mLock) {
            if (this.zzLe != 0) {
                throw new UnsupportedOperationException();
            }
            this.zzabh = t;
            this.zzLe = 1;
            for (zzaju zzaju : this.zzabg) {
                zzaju.zzabi.zzc(t);
            }
            this.zzabg.clear();
        }
    }
}
