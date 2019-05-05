package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;
import java.util.Map;

final class zzqq implements zzrd {
    zzqq() {
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEB)).booleanValue()) {
            zzaka.zzC(Boolean.parseBoolean((String) map.get("disabled")) ^ 1);
        }
    }
}
