package com.google.android.gms.tagmanager;

import java.util.List;

final class zzap implements zzaq {
    private /* synthetic */ DataLayer zzbEl;

    zzap(DataLayer dataLayer) {
        this.zzbEl = dataLayer;
    }

    public final void zzJ(List<zza> list) {
        for (zza zza : list) {
            this.zzbEl.zzr(DataLayer.zzn(zza.zzBN, zza.mValue));
        }
        this.zzbEl.zzbEk.countDown();
    }
}
