package com.google.android.gms.internal;

final class zzcxc implements Runnable {
    private /* synthetic */ zzcxa zzbJH;
    private /* synthetic */ zzcut zzbJI;

    zzcxc(zzcxa zzcxa, zzcut zzcut) {
        this.zzbJH = zzcxa;
        this.zzbJI = zzcut;
    }

    public final void run() {
        if (this.zzbJH.zzbJE.isEmpty()) {
            zzcvk.e("TagManagerBackend emit called without loaded container.");
            return;
        }
        for (zzcuf zza : this.zzbJH.zzbJE.values()) {
            zza.zza(this.zzbJI);
        }
    }
}
