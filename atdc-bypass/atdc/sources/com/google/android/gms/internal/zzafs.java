package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zzafs extends Handler {
    public zzafs(Looper looper) {
        super(looper);
    }

    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            zzbs.zzbD().zza(e, "AdMobHandler.handleMessage");
        }
    }
}
