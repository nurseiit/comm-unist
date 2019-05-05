package com.google.android.gms.tagmanager;

import android.os.Handler.Callback;
import android.os.Message;

final class zzft implements Callback {
    private /* synthetic */ zzfs zzbGQ;

    zzft(zzfs zzfs) {
        this.zzbGQ = zzfs;
    }

    public final boolean handleMessage(Message message) {
        if (1 == message.what && zzfo.zzbGC.equals(message.obj)) {
            this.zzbGQ.zzbGP.dispatch();
            if (!this.zzbGQ.zzbGP.isPowerSaveMode()) {
                this.zzbGQ.zzs((long) this.zzbGQ.zzbGP.zzbGG);
            }
        }
        return true;
    }
}
