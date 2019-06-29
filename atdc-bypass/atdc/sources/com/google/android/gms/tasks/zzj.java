package com.google.android.gms.tasks;

final class zzj implements Runnable {
    private /* synthetic */ Task zzbLT;
    private /* synthetic */ zzi zzbMb;

    zzj(zzi zzi, Task task) {
        this.zzbMb = zzi;
        this.zzbLT = task;
    }

    public final void run() {
        synchronized (this.zzbMb.mLock) {
            if (this.zzbMb.zzbMa != null) {
                this.zzbMb.zzbMa.onSuccess(this.zzbLT.getResult());
            }
        }
    }
}
