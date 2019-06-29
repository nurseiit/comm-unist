package com.google.android.gms.internal;

final class zzum implements Runnable {
    private /* synthetic */ zzuk zzMU;
    private /* synthetic */ zzajm zzMV;

    zzum(zzuk zzuk, zzajm zzajm) {
        this.zzMU = zzuk;
        this.zzMV = zzajm;
    }

    public final void run() {
        for (zzajm zzajm : this.zzMU.zzMQ.keySet()) {
            if (zzajm != this.zzMV) {
                ((zzue) this.zzMU.zzMQ.get(zzajm)).cancel();
            }
        }
    }
}
