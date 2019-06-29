package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Message;

final class zzcwh implements zzcwg {
    private Handler handler;
    final /* synthetic */ zzcwd zzbJa;

    private zzcwh(zzcwd zzcwd) {
        this.zzbJa = zzcwd;
        this.handler = new Handler(this.zzbJa.zzbGD.getMainLooper(), new zzcwi(this));
    }

    /* synthetic */ zzcwh(zzcwd zzcwd, zzcwe zzcwe) {
        this(zzcwd);
    }

    private final Message obtainMessage() {
        return this.handler.obtainMessage(1, zzcwd.zzbGC);
    }

    public final void cancel() {
        this.handler.removeMessages(1, zzcwd.zzbGC);
    }

    public final void zzBY() {
        this.handler.removeMessages(1, zzcwd.zzbGC);
        this.handler.sendMessage(obtainMessage());
    }

    public final void zzs(long j) {
        this.handler.removeMessages(1, zzcwd.zzbGC);
        this.handler.sendMessageDelayed(obtainMessage(), j);
    }
}
