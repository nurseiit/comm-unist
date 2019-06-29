package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.tagmanager.zzcn;

public final class bw extends zzcxq {
    private final zzcvy zzbIP;
    private final zzcn zzbKk;

    public bw(zzcn zzcn, zzcvy zzcvy) {
        this.zzbKk = zzcn;
        this.zzbIP = zzcvy;
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(true);
        boolean z2 = dpVarArr.length == 1 || dpVarArr.length == 2;
        zzbo.zzaf(z2);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        dv dvVar = dpVarArr.length > 1 ? dpVarArr[1] : dv.zzbLu;
        if (!(dvVar == dv.zzbLu || (dvVar instanceof dz))) {
            z = false;
        }
        zzbo.zzaf(z);
        zzcut zzCy = this.zzbIP.zzCy();
        String value = ((eb) dpVarArr[0]).value();
        Bundle bundle = null;
        if (dvVar != dv.zzbLu) {
            bundle = ed.zzy(((dz) dvVar).zzDt());
        }
        try {
            this.zzbKk.logEventInternalNoInterceptor(zzCy.zzCm(), value, bundle, zzCy.currentTimeMillis());
        } catch (RemoteException e) {
            String str = "Error calling measurement proxy:";
            String valueOf = String.valueOf(e.getMessage());
            zzcvk.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
        return dv.zzbLu;
    }
}
