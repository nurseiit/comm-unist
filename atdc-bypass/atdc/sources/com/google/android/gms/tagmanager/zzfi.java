package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbr;

final class zzfi {
    private zzea<zzbr> zzbGu;
    private zzbr zzbGv;

    public zzfi(zzea<zzbr> zzea, zzbr zzbr) {
        this.zzbGu = zzea;
        this.zzbGv = zzbr;
    }

    public final int getSize() {
        return ((zzbr) this.zzbGu.getObject()).zzLU() + (this.zzbGv == null ? 0 : this.zzbGv.zzLU());
    }

    public final zzea<zzbr> zzBM() {
        return this.zzbGu;
    }

    public final zzbr zzBN() {
        return this.zzbGv;
    }
}
