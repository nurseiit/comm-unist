package com.google.android.gms.internal;

final class zzhu implements zzgy {
    private /* synthetic */ zzhs zzzs;

    zzhu(zzhs zzhs) {
        this.zzzs = zzhs;
    }

    public final void zzf(boolean z) {
        if (z) {
            this.zzzs.connect();
        } else {
            this.zzzs.disconnect();
        }
    }
}
