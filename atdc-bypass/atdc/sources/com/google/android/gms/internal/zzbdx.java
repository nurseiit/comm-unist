package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.zzbo;

final class zzbdx extends Handler {
    private /* synthetic */ zzbdw zzaEO;

    public zzbdx(zzbdw zzbdw, Looper looper) {
        this.zzaEO = zzbdw;
        super(looper);
    }

    public final void handleMessage(Message message) {
        boolean z = true;
        if (message.what != 1) {
            z = false;
        }
        zzbo.zzaf(z);
        this.zzaEO.zzb((zzbdz) message.obj);
    }
}
