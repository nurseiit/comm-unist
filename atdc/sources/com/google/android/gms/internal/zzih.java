package com.google.android.gms.internal;

@zzzn
final class zzih implements Runnable {
    private final int zzzI;
    private /* synthetic */ zzig zzzJ;

    public zzih(zzig zzig, int i) {
        this.zzzJ = zzig;
        this.zzzI = i;
    }

    public final void run() {
        synchronized (this.zzzJ) {
            if (this.zzzJ.zzzG == this.zzzI) {
                this.zzzJ.zzdg();
            }
        }
    }
}
