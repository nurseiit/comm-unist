package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.Map;

final class zzcvw implements aa {
    private /* synthetic */ zzcvu zzbIQ;

    private zzcvw(zzcvu zzcvu) {
        this.zzbIQ = zzcvu;
    }

    /* synthetic */ zzcvw(zzcvu zzcvu, zzcvv zzcvv) {
        this(zzcvu);
    }

    public final Object zzd(String str, Map<String, Object> map) {
        try {
            this.zzbIQ.zzbHW.zze(str, map);
        } catch (RemoteException e) {
            String str2 = "Error calling customEvaluator proxy:";
            str = String.valueOf(e.getMessage());
            zzcvk.e(str.length() != 0 ? str2.concat(str) : new String(str2));
        }
        return null;
    }
}
