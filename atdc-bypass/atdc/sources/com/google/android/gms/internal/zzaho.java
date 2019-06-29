package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzbs;

@TargetApi(21)
public final class zzaho extends zzahn {
    public final CookieManager zzS(Context context) {
        try {
            return CookieManager.getInstance();
        } catch (Exception e) {
            zzajc.zzb("Failed to obtain CookieManager.", e);
            zzbs.zzbD().zza(e, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    public final zzakb zzb(zzaka zzaka, boolean z) {
        return new zzalh(zzaka, z);
    }

    public final int zzhX() {
        return 16974374;
    }
}
