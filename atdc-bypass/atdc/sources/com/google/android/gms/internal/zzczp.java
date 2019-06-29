package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzczp extends zzcxq {
    public static final zzczp zzbJW = new zzczp();

    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length == 2);
        dp dpVar = dpVarArr[0];
        dp dpVar2 = dpVarArr[1];
        zzbo.zzaf(ed.zzm(dpVar) ^ 1);
        zzbo.zzaf(ed.zzm(dpVar2) ^ 1);
        String zzd = zzcxp.zzd(dpVar2);
        double zzb;
        int i;
        if (dpVar instanceof dw) {
            if ("length".equals(zzd)) {
                return new ds(Boolean.valueOf(true));
            }
            zzb = zzcxp.zzb(dpVar2);
            if (zzb == Math.floor(zzb)) {
                i = (int) zzb;
                if (zzd.equals(Integer.toString(i)) && i >= 0 && i < ((dw) dpVar).zzDs().size()) {
                    return new ds(Boolean.valueOf(true));
                }
            }
        } else if (dpVar instanceof eb) {
            if ("length".equals(zzd)) {
                return new ds(Boolean.valueOf(true));
            }
            zzb = zzcxp.zzb(dpVar2);
            if (zzb == Math.floor(zzb)) {
                i = (int) zzb;
                if (zzd.equals(Integer.toString(i)) && i >= 0 && i < ((eb) dpVar).value().length()) {
                    return new ds(Boolean.valueOf(true));
                }
            }
            return new ds(Boolean.valueOf(false));
        }
        return new ds(Boolean.valueOf(dpVar.zzfY(zzd)));
    }
}
