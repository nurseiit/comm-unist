package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbr;
import java.util.Map;

abstract class zzga extends zzeg {
    public zzga(String str) {
        super(str);
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zza(zzbr zzbr, zzbr zzbr2, Map<String, zzbr> map) {
        String zzb = zzgk.zzb(zzbr);
        String zzb2 = zzgk.zzb(zzbr2);
        return (zzb == zzgk.zzCg() || zzb2 == zzgk.zzCg()) ? false : zza(zzb, zzb2, (Map) map);
    }

    public abstract boolean zza(String str, String str2, Map<String, zzbr> map);
}
