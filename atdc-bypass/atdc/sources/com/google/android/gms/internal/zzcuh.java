package com.google.android.gms.internal;

final class zzcuh implements Runnable {
    private /* synthetic */ zzcuf zzbHS;

    zzcuh(zzcuf zzcuf) {
        this.zzbHS = zzcuf;
    }

    public final void run() {
        this.zzbHS.zzbHL.execute(new zzcul(this.zzbHS, null));
    }
}
