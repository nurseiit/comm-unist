package com.google.android.gms.internal;

import android.os.Looper;

final class zzann implements Runnable {
    private /* synthetic */ zzanm zzaha;

    zzann(zzanm zzanm) {
        this.zzaha = zzanm;
    }

    public final void run() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.zzaha.zzafJ.zzkt().zzf(this);
            return;
        }
        boolean zzbo = this.zzaha.zzbo();
        this.zzaha.zzagZ = 0;
        if (zzbo) {
            this.zzaha.run();
        }
    }
}
