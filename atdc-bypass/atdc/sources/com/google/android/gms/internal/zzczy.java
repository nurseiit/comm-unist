package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.List;

public final class zzczy implements zzcxo {
    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        dv zza;
        zzbo.zzaf(dpVarArr != null);
        zzbo.zzaf(dpVarArr.length == 4);
        dp zza2 = ed.zza(zzcwa, dpVarArr[3]);
        zzbo.zzaf(zza2 instanceof dw);
        List zzDs = ((dw) zza2).zzDs();
        dp<?> dpVar = dpVarArr[2];
        zzbo.zzaf(dpVar instanceof ds);
        if (((ds) dpVar).zzDn().booleanValue()) {
            zza = ed.zza(zzcwa, zzDs);
            if (zza == dv.zzbLr) {
                return dv.zzbLu;
            }
            if (zza.zzDr()) {
                return zza;
            }
        }
        while (zzcxp.zza(ed.zza(zzcwa, dpVarArr[0]))) {
            zza = ed.zza(zzcwa, zzDs);
            if (zza == dv.zzbLr) {
                return dv.zzbLu;
            }
            if (zza.zzDr()) {
                return zza;
            }
            ed.zza(zzcwa, dpVarArr[1]);
        }
        return dv.zzbLu;
    }
}
