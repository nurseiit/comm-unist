package com.google.android.gms.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import java.util.Map;

final class zzqx implements zzrd {
    zzqx() {
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzajc.zzaT("URL missing from click GMSG.");
            return;
        }
        Uri parse = Uri.parse(str);
        try {
            zzcu zziy = zzaka.zziy();
            if (zziy != null && zziy.zzc(parse)) {
                parse = zziy.zza(parse, zzaka.getContext(), zzaka.getView());
            }
        } catch (zzcv unused) {
            String str2 = "Unable to append parameter to URL: ";
            str = String.valueOf(str);
            zzajc.zzaT(str.length() != 0 ? str2.concat(str) : new String(str2));
        }
        Object obj = (((Boolean) zzbs.zzbL().zzd(zzmo.zzDy)).booleanValue() && zzbs.zzbY().zzp(zzaka.getContext())) ? 1 : null;
        if (obj != null && TextUtils.isEmpty(parse.getQueryParameter("fbs_aeid"))) {
            str = zzbs.zzbY().zzw(zzaka.getContext());
            zzbs.zzbz();
            parse = zzagz.zzb(parse.toString(), "fbs_aeid", str);
            zzbs.zzbY().zzf(zzaka.getContext(), str);
        }
        new zzaiq(zzaka.getContext(), zzaka.zziz().zzaP, parse.toString()).zzhL();
    }
}
