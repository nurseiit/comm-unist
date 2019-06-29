package com.google.android.gms.internal;

import android.text.TextUtils;
import com.bumptech.glide.load.Key;
import com.google.android.gms.ads.internal.js.zzai;
import java.util.Map;

final class zzoh implements zzrd {
    final /* synthetic */ zzai zzIj;
    final /* synthetic */ zzog zzIk;

    zzoh(zzog zzog, zzai zzai) {
        this.zzIk = zzog;
        this.zzIj = zzai;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        zzaka zzaka2 = (zzaka) this.zzIk.zzIh.get();
        if (zzaka2 == null) {
            this.zzIj.zzb("/loadHtml", (zzrd) this);
            return;
        }
        zzaka2.zziw().zza(new zzoi(this, map));
        String str = (String) map.get("overlayHtml");
        String str2 = (String) map.get("baseUrl");
        if (TextUtils.isEmpty(str2)) {
            zzaka2.loadData(str, "text/html", Key.STRING_CHARSET_NAME);
        } else {
            zzaka2.loadDataWithBaseURL(str2, str, "text/html", Key.STRING_CHARSET_NAME, null);
        }
    }
}
