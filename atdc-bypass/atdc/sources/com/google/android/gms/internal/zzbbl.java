package com.google.android.gms.internal;

final class zzbbl implements Runnable {
    private /* synthetic */ zzbbk zzaCx;

    zzbbl(zzbbk zzbbk) {
        this.zzaCx = zzbbk;
    }

    public final void run() {
        this.zzaCx.zzaCv.lock();
        try {
            this.zzaCx.zzpF();
        } finally {
            this.zzaCx.zzaCv.unlock();
        }
    }
}
