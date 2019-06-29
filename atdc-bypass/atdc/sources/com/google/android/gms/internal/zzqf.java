package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener;

@zzzn
public final class zzqf extends zzpu {
    private final OnCustomClickListener zzIN;

    public zzqf(OnCustomClickListener onCustomClickListener) {
        this.zzIN = onCustomClickListener;
    }

    public final void zzb(zzpj zzpj, String str) {
        this.zzIN.onCustomClick(new zzpm(zzpj), str);
    }
}
