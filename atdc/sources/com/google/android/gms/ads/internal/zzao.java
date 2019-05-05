package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzu;

final class zzao implements Runnable {
    private /* synthetic */ AdOverlayInfoParcel zzup;
    private /* synthetic */ zzan zzuq;

    zzao(zzan zzan, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzuq = zzan;
        this.zzup = adOverlayInfoParcel;
    }

    public final void run() {
        zzbs.zzbx();
        zzu.zza(this.zzuq.zzun.zzsP.zzqD, this.zzup, true);
    }
}
