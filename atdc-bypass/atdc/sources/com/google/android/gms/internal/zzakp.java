package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Map;

final class zzakp implements zzrd {
    private /* synthetic */ zzako zzacr;

    zzakp(zzako zzako) {
        this.zzacr = zzako;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        if (map != null) {
            String str = (String) map.get("height");
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    synchronized (this.zzacr.mLock) {
                        if (this.zzacr.zzaci != parseInt) {
                            this.zzacr.zzaci = parseInt;
                            this.zzacr.requestLayout();
                        }
                    }
                } catch (Exception e) {
                    zzajc.zzc("Exception occurred while getting webview content height", e);
                }
            }
        }
    }
}
