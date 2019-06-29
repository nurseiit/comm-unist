package com.google.android.gms.internal;

final class zzoq implements Runnable {
    private /* synthetic */ zzoc zzIA;
    private /* synthetic */ zzop zzIB;

    zzoq(zzop zzop, zzoc zzoc) {
        this.zzIB = zzop;
        this.zzIA = zzoc;
    }

    public final void run() {
        zzaka zzes;
        try {
            zzes = this.zzIA.zzes();
        } catch (Exception e) {
            zzajc.zzb("Error obtaining overlay.", e);
            zzes = null;
        }
        if (!(zzes == null || this.zzIB.zzss == null)) {
            this.zzIB.zzss.addView(zzes.getView());
        }
        if (!(this.zzIA instanceof zznx)) {
            this.zzIB.zza(this.zzIA);
        }
    }
}
