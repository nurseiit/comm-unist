package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zzaez {
    public static String zzb(String str, Context context) {
        if (zzbs.zzbY().zzp(context)) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            String zzw = zzbs.zzbY().zzw(context);
            if (zzw == null) {
                return str;
            }
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzDz)).booleanValue()) {
                String str2 = (String) zzbs.zzbL().zzd(zzmo.zzDA);
                if (str.contains(str2)) {
                    zzbs.zzbz();
                    if (zzagz.zzaL(str)) {
                        zzbs.zzbY().zzf(context, zzw);
                        return str.replaceAll(str2, zzw);
                    }
                    zzbs.zzbz();
                    if (zzagz.zzaM(str)) {
                        zzbs.zzbY().zzg(context, zzw);
                        return str.replaceAll(str2, zzw);
                    }
                }
            } else if (!str.contains("fbs_aeid")) {
                zzbs.zzbz();
                if (zzagz.zzaL(str)) {
                    zzbs.zzbY().zzf(context, zzw);
                    zzbs.zzbz();
                    return zzagz.zzb(str, "fbs_aeid", zzw).toString();
                }
                zzbs.zzbz();
                if (zzagz.zzaM(str)) {
                    zzbs.zzbY().zzg(context, zzw);
                    zzbs.zzbz();
                    str = zzagz.zzb(str, "fbs_aeid", zzw).toString();
                }
            }
        }
        return str;
    }
}
