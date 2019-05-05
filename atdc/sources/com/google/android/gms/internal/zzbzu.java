package com.google.android.gms.internal;

public abstract class zzbzu<T> {
    private final int zzBM;
    private final String zzBN;
    private final T zzBO;

    private zzbzu(int i, String str, T t) {
        this.zzBM = i;
        this.zzBN = str;
        this.zzBO = t;
        zzcaf.zzub().zza(this);
    }

    /* synthetic */ zzbzu(int i, String str, Object obj, zzbzv zzbzv) {
        this(i, str, obj);
    }

    public static zzbzw zzb(int i, String str, Boolean bool) {
        return new zzbzw(0, str, bool);
    }

    public static zzbzx zzb(int i, String str, int i2) {
        return new zzbzx(0, str, Integer.valueOf(i2));
    }

    public static zzbzy zzb(int i, String str, long j) {
        return new zzbzy(0, str, Long.valueOf(j));
    }

    public final String getKey() {
        return this.zzBN;
    }

    public final int getSource() {
        return this.zzBM;
    }

    public abstract T zza(zzcac zzcac);

    public final T zzdI() {
        return this.zzBO;
    }
}
