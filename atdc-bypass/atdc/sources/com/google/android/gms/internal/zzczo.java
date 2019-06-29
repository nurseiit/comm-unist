package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzczo extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        boolean z = false;
        zzbo.zzaf(dpVarArr.length == 2);
        dp dpVar = dpVarArr[0];
        dp dpVar2 = dpVarArr[1];
        boolean z2 = dpVar instanceof eb;
        if (z2 || !ed.zzl(dpVar)) {
            z = true;
        }
        zzbo.zzaf(z);
        zzbo.zzaf(ed.zzm(dpVar) ^ 1);
        zzbo.zzaf(1 ^ ed.zzm(dpVar2));
        String zzd = zzcxp.zzd(dpVar2);
        int i;
        if (dpVar instanceof dw) {
            dw dwVar = (dw) dpVar;
            if ("length".equals(zzd)) {
                return new dt(Double.valueOf((double) dwVar.zzDs().size()));
            }
            double zzb = zzcxp.zzb(dpVar2);
            if (zzb == Math.floor(zzb)) {
                i = (int) zzb;
                if (zzd.equals(Integer.toString(i))) {
                    dpVar2 = dwVar.zzbG(i);
                    if (dpVar2 != dv.zzbLu) {
                        return dpVar2;
                    }
                }
            }
        } else if (z2) {
            eb ebVar = (eb) dpVar;
            if ("length".equals(zzd)) {
                return new dt(Double.valueOf((double) ebVar.value().length()));
            }
            double zzb2 = zzcxp.zzb(dpVar2);
            if (zzb2 == Math.floor(zzb2)) {
                i = (int) zzb2;
                if (zzd.equals(Integer.toString(i))) {
                    return ebVar.zzbI(i);
                }
            }
            return dv.zzbLu;
        }
        return dpVar.zzfZ(zzd);
    }
}
