package com.google.android.gms.tagmanager;

import com.bumptech.glide.load.Key;
import com.google.android.gms.internal.zzbr;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

final class zzgo {
    private static zzea<zzbr> zza(zzea<zzbr> zzea) {
        try {
            return new zzea(zzgk.zzI(zzfC(zzgk.zzb((zzbr) zzea.getObject()))), zzea.zzBz());
        } catch (UnsupportedEncodingException e) {
            zzdj.zzb("Escape URI: unsupported encoding", e);
            return zzea;
        }
    }

    static zzea<zzbr> zza(zzea<zzbr> zzea, int... iArr) {
        zzea zzea2;
        for (int i : iArr) {
            String str;
            if (!(zzgk.zzg((zzbr) zzea2.getObject()) instanceof String)) {
                str = "Escaping can only be applied to strings.";
            } else if (i != 12) {
                StringBuilder stringBuilder = new StringBuilder(39);
                stringBuilder.append("Unsupported Value Escaping: ");
                stringBuilder.append(i);
                str = stringBuilder.toString();
            } else {
                zzea2 = zza(zzea2);
            }
            zzdj.e(str);
        }
        return zzea2;
    }

    static String zzfC(String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, Key.STRING_CHARSET_NAME).replaceAll("\\+", "%20");
    }
}
