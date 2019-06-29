package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Message;

final class zzfs implements zzfr {
    private Handler handler;
    final /* synthetic */ zzfo zzbGP;

    private zzfs(zzfo zzfo) {
        this.zzbGP = zzfo;
        this.handler = new Handler(this.zzbGP.zzbGD.getMainLooper(), new zzft(this));
    }

    /* synthetic */ zzfs(zzfo zzfo, zzfp zzfp) {
        this(zzfo);
    }

    private final Message obtainMessage() {
        return this.handler.obtainMessage(1, zzfo.zzbGC);
    }

    public final void cancel() {
        this.handler.removeMessages(1, zzfo.zzbGC);
    }

    public final void zzBY() {
        this.handler.removeMessages(1, zzfo.zzbGC);
        this.handler.sendMessage(obtainMessage());
    }

    public final void zzs(long j) {
        this.handler.removeMessages(1, zzfo.zzbGC);
        this.handler.sendMessageDelayed(obtainMessage(), j);
    }
}
