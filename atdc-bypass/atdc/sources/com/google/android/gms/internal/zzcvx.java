package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.Map;

final class zzcvx implements aa {
    private /* synthetic */ zzcvu zzbIQ;

    private zzcvx(zzcvu zzcvu) {
        this.zzbIQ = zzcvu;
    }

    /* synthetic */ zzcvx(zzcvu zzcvu, zzcvv zzcvv) {
        this(zzcvu);
    }

    public final Object zzd(String str, Map<String, Object> map) {
        try {
            return this.zzbIQ.zzbHW.zzf(str, map);
        } catch (RemoteException e) {
            String str2 = "Error calling customEvaluator proxy:";
            str = String.valueOf(e.getMessage());
            zzcvk.e(str.length() != 0 ? str2.concat(str) : new String(str2));
            return null;
        }
    }
}
