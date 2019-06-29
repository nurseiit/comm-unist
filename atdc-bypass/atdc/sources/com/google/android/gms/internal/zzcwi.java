package com.google.android.gms.internal;

import android.os.Handler.Callback;
import android.os.Message;

final class zzcwi implements Callback {
    private /* synthetic */ zzcwh zzbJb;

    zzcwi(zzcwh zzcwh) {
        this.zzbJb = zzcwh;
    }

    public final boolean handleMessage(Message message) {
        if (1 == message.what && zzcwd.zzbGC.equals(message.obj)) {
            this.zzbJb.zzbJa.dispatch();
            if (!this.zzbJb.zzbJa.isPowerSaveMode()) {
                this.zzbJb.zzs((long) this.zzbJb.zzbJa.zzbGG);
            }
        }
        return true;
    }
}
