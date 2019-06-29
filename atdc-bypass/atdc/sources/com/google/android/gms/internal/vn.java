package com.google.android.gms.internal;

import java.util.Comparator;

final class vn implements Comparator<vi> {
    private /* synthetic */ vm zzcgW;

    vn(vm vmVar) {
        this.zzcgW = vmVar;
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        vi viVar = (vi) obj;
        vi viVar2 = (vi) obj2;
        return this.zzcgW.zzcgV.compare(new xl(viVar.zzHY(), viVar.zzHW().zzFn()), new xl(viVar2.zzHY(), viVar2.zzHW().zzFn()));
    }
}
