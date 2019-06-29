package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.tagmanager.ContainerHolder.ContainerAvailableListener;

final class zzx extends Handler {
    private final ContainerAvailableListener zzbDJ;
    private /* synthetic */ zzv zzbDK;

    public zzx(zzv zzv, ContainerAvailableListener containerAvailableListener, Looper looper) {
        this.zzbDK = zzv;
        super(looper);
        this.zzbDJ = containerAvailableListener;
    }

    public final void handleMessage(Message message) {
        if (message.what != 1) {
            zzdj.e("Don't know how to handle this message.");
            return;
        }
        this.zzbDJ.onContainerAvailable(this.zzbDK, (String) message.obj);
    }
}
