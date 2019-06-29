package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.Iterator;
import java.util.List;

public final class zzczl extends zzcxq {
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzu(dpVarArr);
        zzbo.zzaf(dpVarArr.length == 3);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        String value = ((eb) dpVarArr[0]).value();
        zzbo.zzaf(zzcwa.has(value));
        Object obj = dpVarArr[1];
        zzbo.zzu(obj);
        dp<?> dpVar = dpVarArr[2];
        zzbo.zzaf(dpVar instanceof dw);
        List zzDs = ((dw) dpVar).zzDs();
        Iterator zzDk = obj.zzDk();
        while (zzDk.hasNext()) {
            zzcwa.zzb(value, (dp) zzDk.next());
            dv zza = ed.zza(zzcwa, zzDs);
            if (zza == dv.zzbLr) {
                return dv.zzbLu;
            }
            if (zza.zzDr()) {
                return zza;
            }
        }
        return dv.zzbLu;
    }
}
