package com.google.android.gms.internal;

final class zzcxd implements Runnable {
    private /* synthetic */ zzcxa zzbJH;

    zzcxd(zzcxa zzcxa) {
        this.zzbJH = zzcxa;
    }

    public final void run() {
        if (this.zzbJH.zzbJE.isEmpty()) {
            zzcvk.zzaT("TagManagerBackend dispatch called without loaded container.");
            return;
        }
        for (zzcuf dispatch : this.zzbJH.zzbJE.values()) {
            dispatch.dispatch();
        }
    }
}
