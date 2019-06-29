package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.gms.ads.internal.zzbs;
import org.json.JSONObject;

@zzzn
public abstract class zzme<T> {
    private final int zzBM;
    private final String zzBN;
    private final T zzBO;

    private zzme(int i, String str, T t) {
        this.zzBM = i;
        this.zzBN = str;
        this.zzBO = t;
        zzbs.zzbK().zza(this);
    }

    /* synthetic */ zzme(int i, String str, Object obj, zzmf zzmf) {
        this(i, str, obj);
    }

    public static zzme<String> zza(int i, String str) {
        zzme zza = zza(i, str, null);
        zzbs.zzbK().zzb(zza);
        return zza;
    }

    public static zzme<Float> zza(int i, String str, float f) {
        return new zzmi(i, str, Float.valueOf(0.0f));
    }

    public static zzme<Integer> zza(int i, String str, int i2) {
        return new zzmg(i, str, Integer.valueOf(i2));
    }

    public static zzme<Long> zza(int i, String str, long j) {
        return new zzmh(i, str, Long.valueOf(j));
    }

    public static zzme<Boolean> zza(int i, String str, Boolean bool) {
        return new zzmf(i, str, bool);
    }

    public static zzme<String> zza(int i, String str, String str2) {
        return new zzmj(i, str, str2);
    }

    public static zzme<String> zzb(int i, String str) {
        zzme zza = zza(i, str, null);
        zzbs.zzbK().zzc(zza);
        return zza;
    }

    public final String getKey() {
        return this.zzBN;
    }

    public final int getSource() {
        return this.zzBM;
    }

    public abstract T zza(SharedPreferences sharedPreferences);

    public abstract void zza(Editor editor, T t);

    public abstract T zzb(JSONObject jSONObject);

    public final T zzdI() {
        return this.zzBO;
    }
}
