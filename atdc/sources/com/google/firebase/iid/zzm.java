package com.google.firebase.iid;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class zzm extends Handler {
    private /* synthetic */ zzl zzckJ;

    zzm(zzl zzl, Looper looper) {
        this.zzckJ = zzl;
        super(looper);
    }

    public final void handleMessage(Message message) {
        this.zzckJ.zzc(message);
    }
}
