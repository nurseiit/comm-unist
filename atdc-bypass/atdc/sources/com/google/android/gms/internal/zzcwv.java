package com.google.android.gms.internal;

final class zzcwv implements Runnable {
    private /* synthetic */ zzcwu zzbJz;

    zzcwv(zzcwu zzcwu) {
        this.zzbJz = zzcwu;
    }

    public final void run() {
        if (this.zzbJz.zzbJp.zzbJl == 1 || this.zzbJz.zzbJp.zzbJl == 2) {
            this.zzbJz.zzbJp.zzbJl = 4;
            zzcvk.e("Container load timed out after 5000ms.");
            while (!this.zzbJz.zzbJp.zzbJm.isEmpty()) {
                this.zzbJz.zzbJp.zzbHL.execute((Runnable) this.zzbJz.zzbJp.zzbJm.remove());
            }
        }
    }
}
