package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzrd;
import java.util.Map;

final class zzad implements zzrd {
    private /* synthetic */ Runnable zzty;
    private /* synthetic */ zzac zztz;

    zzad(zzac zzac, Runnable runnable) {
        this.zztz = zzac;
        this.zzty = runnable;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        zzaka.zzb("/appSettingsFetched", (zzrd) this);
        synchronized (this.zztz.mLock) {
            if (map != null) {
                try {
                    if ("true".equalsIgnoreCase((String) map.get("isSuccessful"))) {
                        zzbs.zzbD().zzn(this.zztz.mContext, (String) map.get("appSettingsJson"));
                        if (this.zzty != null) {
                            this.zzty.run();
                        }
                    }
                } catch (Throwable th) {
                }
            }
        }
    }
}
