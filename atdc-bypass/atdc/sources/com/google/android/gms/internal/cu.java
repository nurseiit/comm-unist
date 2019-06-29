package com.google.android.gms.internal;

import com.bumptech.glide.load.Key;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public final class cu {
    private String zzbEa = "https://www.google-analytics.com";

    private static String zzfC(String str) {
        try {
            return URLEncoder.encode(str, Key.STRING_CHARSET_NAME).replaceAll("\\+", "%20");
        } catch (UnsupportedEncodingException unused) {
            String str2 = "Cannot encode the string: ";
            str = String.valueOf(str);
            zzcvk.e(str.length() != 0 ? str2.concat(str) : new String(str2));
            return "";
        }
    }

    public final String zzb(bz bzVar) {
        Object zzCM;
        StringBuilder stringBuilder;
        String str = this.zzbEa;
        String valueOf = String.valueOf("/gtm/android?");
        if (bzVar.zzCL()) {
            zzCM = bzVar.zzCM();
        } else if (bzVar == null) {
            zzCM = "";
        } else {
            String trim = !bzVar.zzCN().trim().equals("") ? bzVar.zzCN().trim() : "-1";
            stringBuilder = new StringBuilder();
            stringBuilder.append(bzVar.zzCJ() != null ? bzVar.zzCJ() : "id");
            stringBuilder.append("=");
            stringBuilder.append(zzfC(bzVar.getContainerId()));
            stringBuilder.append("&pv=");
            stringBuilder.append(zzfC(trim));
            stringBuilder.append("&rv=5.0");
            if (bzVar.zzCL()) {
                stringBuilder.append("&gtm_debug=x");
            }
            zzCM = stringBuilder.toString();
        }
        stringBuilder = new StringBuilder((String.valueOf(str).length() + String.valueOf(valueOf).length()) + String.valueOf(zzCM).length());
        stringBuilder.append(str);
        stringBuilder.append(valueOf);
        stringBuilder.append(zzCM);
        return stringBuilder.toString();
    }
}
