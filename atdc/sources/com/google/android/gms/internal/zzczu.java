package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class zzczu extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length == 3);
        dp dpVar = dpVarArr[0];
        dp dpVar2 = dpVarArr[1];
        dp dpVar3 = dpVarArr[2];
        zzbo.zzaf(dpVar != dv.zzbLt);
        zzbo.zzaf(dpVar != dv.zzbLu);
        zzbo.zzaf(ed.zzm(dpVar) ^ 1);
        zzbo.zzaf(ed.zzm(dpVar2) ^ 1);
        zzbo.zzaf(ed.zzm(dpVar3) ^ 1);
        if (ed.zzl(dpVar)) {
            return dpVar3;
        }
        String zzd = zzcxp.zzd(dpVar2);
        if (dpVar instanceof dz) {
            dz dzVar = (dz) dpVar;
            if (!dzVar.isImmutable()) {
                dzVar.zzc(zzd, dpVar3);
            }
            return dpVar3;
        }
        if (dpVar instanceof dw) {
            dw dwVar = (dw) dpVar;
            if ("length".equals(zzd)) {
                double zzb = zzcxp.zzb(dpVar3);
                if (Double.isInfinite(zzb) || zzb != Math.floor(zzb)) {
                    z = false;
                }
                zzbo.zzaf(z);
                dwVar.setSize((int) zzb);
                return dpVar3;
            }
            double zzb2 = zzcxp.zzb(dpVar2);
            if (!Double.isInfinite(zzb2) && zzb2 >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                int i = (int) zzb2;
                if (zzd.equals(Integer.toString(i))) {
                    dwVar.zza(i, dpVar3);
                    return dpVar3;
                }
            }
        }
        dpVar.zzc(zzd, dpVar3);
        return dpVar3;
    }
}
