package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzu;
import com.google.android.gms.ads.internal.zzbs;

final class zzwg implements Runnable {
    private /* synthetic */ zzwd zzNr;
    private /* synthetic */ AdOverlayInfoParcel zzup;

    zzwg(zzwd zzwd, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzNr = zzwd;
        this.zzup = adOverlayInfoParcel;
    }

    public final void run() {
        zzbs.zzbx();
        zzu.zza(this.zzNr.zzNo, this.zzup, true);
    }
}
