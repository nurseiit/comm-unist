package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzant<V> {
    private final V zzahV;
    private final zzbez<V> zzahW;

    private zzant(zzbez<V> zzbez, V v) {
        zzbo.zzu(zzbez);
        this.zzahW = zzbez;
        this.zzahV = v;
    }

    static zzant<Float> zza(String str, float f, float f2) {
        return new zzant(zzbez.zza(str, Float.valueOf(0.5f)), Float.valueOf(0.5f));
    }

    static zzant<Integer> zza(String str, int i, int i2) {
        return new zzant(zzbez.zza(str, Integer.valueOf(i2)), Integer.valueOf(i));
    }

    static zzant<Long> zza(String str, long j, long j2) {
        return new zzant(zzbez.zza(str, Long.valueOf(j2)), Long.valueOf(j));
    }

    static zzant<Boolean> zza(String str, boolean z, boolean z2) {
        return new zzant(zzbez.zzg(str, z2), Boolean.valueOf(z));
    }

    static zzant<String> zzc(String str, String str2, String str3) {
        return new zzant(zzbez.zzv(str, str3), str2);
    }

    public final V get() {
        return this.zzahV;
    }
}
