package com.google.android.gms.iid;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class zzf extends Handler {
    private /* synthetic */ zze zzbhn;

    zzf(zze zze, Looper looper) {
        this.zzbhn = zze;
        super(looper);
    }

    public final void handleMessage(Message message) {
        this.zzbhn.zzc(message);
    }
}
