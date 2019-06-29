package com.google.android.gms.internal;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

final class zzaij<T> extends zzp<InputStream> {
    private final zzv<T> zzaD;
    private final zzaii<T> zzaaj;

    public zzaij(String str, zzaii<T> zzaii, zzv<T> zzv) {
        super(0, str, new zzaik(zzv, zzaii));
        this.zzaaj = zzaii;
        this.zzaD = zzv;
    }

    /* Access modifiers changed, original: protected|final */
    public final zzt<InputStream> zza(zzn zzn) {
        return zzt.zza(new ByteArrayInputStream(zzn.data), zzam.zzb(zzn));
    }
}
