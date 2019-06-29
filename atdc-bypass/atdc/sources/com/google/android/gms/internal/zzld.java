package com.google.android.gms.internal;

final class zzld extends zzjk {
    private /* synthetic */ zzlc zzBk;

    zzld(zzlc zzlc) {
        this.zzBk = zzlc;
    }

    public final void onAdFailedToLoad(int i) {
        this.zzBk.zzBd.zza(this.zzBk.zzae());
        super.onAdFailedToLoad(i);
    }

    public final void onAdLoaded() {
        this.zzBk.zzBd.zza(this.zzBk.zzae());
        super.onAdLoaded();
    }
}
