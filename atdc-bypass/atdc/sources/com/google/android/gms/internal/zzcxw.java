package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;
import java.util.List;

public final class zzcxw extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzu(dpVarArr);
        boolean z = dpVarArr.length == 1 || dpVarArr.length == 2;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        List<dp> zzDs = ((dw) dpVarArr[0]).zzDs();
        dp dpVar = dpVarArr.length < 2 ? dv.zzbLu : dpVarArr[1];
        CharSequence zzd = dpVar == dv.zzbLu ? "," : zzcxp.zzd(dpVar);
        ArrayList arrayList = new ArrayList();
        for (dp dpVar2 : zzDs) {
            Object zzd2 = (dpVar2 == dv.zzbLt || dpVar2 == dv.zzbLu) ? "" : zzcxp.zzd(dpVar2);
            arrayList.add(zzd2);
        }
        return new eb(TextUtils.join(zzd, arrayList));
    }
}
