package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast.MessageReceivedCallback;

final class zzayd implements Runnable {
    private /* synthetic */ String zzaoQ;
    private /* synthetic */ zzaxx zzayi;
    private /* synthetic */ String zzaym;

    zzayd(zzaxz zzaxz, zzaxx zzaxx, String str, String str2) {
        this.zzayi = zzaxx;
        this.zzaoQ = str;
        this.zzaym = str2;
    }

    public final void run() {
        MessageReceivedCallback messageReceivedCallback;
        synchronized (this.zzayi.zzaxM) {
            messageReceivedCallback = (MessageReceivedCallback) this.zzayi.zzaxM.get(this.zzaoQ);
        }
        if (messageReceivedCallback != null) {
            messageReceivedCallback.onMessageReceived(this.zzayi.zzasf, this.zzaoQ, this.zzaym);
            return;
        }
        zzaxx.zzapq.zzb("Discarded message for unknown namespace '%s'", this.zzaoQ);
    }
}
