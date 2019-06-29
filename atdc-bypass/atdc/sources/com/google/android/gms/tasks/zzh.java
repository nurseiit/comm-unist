package com.google.android.gms.tasks;

final class zzh implements Runnable {
    private /* synthetic */ Task zzbLT;
    private /* synthetic */ zzg zzbLZ;

    zzh(zzg zzg, Task task) {
        this.zzbLZ = zzg;
        this.zzbLT = task;
    }

    public final void run() {
        synchronized (this.zzbLZ.mLock) {
            if (this.zzbLZ.zzbLY != null) {
                this.zzbLZ.zzbLY.onFailure(this.zzbLT.getException());
            }
        }
    }
}
