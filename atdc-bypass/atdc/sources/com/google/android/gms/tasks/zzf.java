package com.google.android.gms.tasks;

final class zzf implements Runnable {
    private /* synthetic */ Task zzbLT;
    private /* synthetic */ zze zzbLX;

    zzf(zze zze, Task task) {
        this.zzbLX = zze;
        this.zzbLT = task;
    }

    public final void run() {
        synchronized (this.zzbLX.mLock) {
            if (this.zzbLX.zzbLW != null) {
                this.zzbLX.zzbLW.onComplete(this.zzbLT);
            }
        }
    }
}
