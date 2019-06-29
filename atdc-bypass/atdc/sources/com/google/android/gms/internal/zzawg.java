package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast.Listener;

final class zzawg extends Listener {
    private /* synthetic */ zzawf zzavF;

    zzawg(zzawf zzawf) {
        this.zzavF = zzawf;
    }

    public final void onVolumeChanged() {
        this.zzavF.zzok();
    }
}
