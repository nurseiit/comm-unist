package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.Comparator;

final class zzcyj implements Comparator<dp<?>> {
    private /* synthetic */ du zzbJU;
    private /* synthetic */ zzcwa zzbJV;

    zzcyj(zzcyh zzcyh, du duVar, zzcwa zzcwa) {
        this.zzbJU = duVar;
        this.zzbJV = zzcwa;
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        dp dpVar = (dp) obj;
        dp dpVar2 = (dp) obj2;
        if (dpVar == null) {
            return dpVar2 != null ? 1 : 0;
        } else {
            if (dpVar2 == null) {
                return dpVar != null ? -1 : 0;
            } else {
                dpVar = this.zzbJU.zzDp().zzb(this.zzbJV, dpVar, dpVar2);
                zzbo.zzae(dpVar instanceof dt);
                return (int) ((dt) dpVar).zzDo().doubleValue();
            }
        }
    }
}
