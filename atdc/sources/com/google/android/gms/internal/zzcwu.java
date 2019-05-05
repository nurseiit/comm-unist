package com.google.android.gms.internal;

final class zzcwu implements Runnable {
    final /* synthetic */ zzcwn zzbJp;

    zzcwu(zzcwn zzcwn) {
        this.zzbJp = zzcwn;
    }

    public final void run() {
        this.zzbJp.zzbHL.execute(new zzcwv(this));
    }
}
