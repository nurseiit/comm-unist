package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

public class zzcx {
    private static String zzbEX;
    static Map<String, String> zzbEY = new HashMap();

    static void zzK(Context context, String str) {
        zzfu.zzd(context, "gtm_install_referrer", "referrer", str);
        zzM(context, str);
    }

    public static String zzL(Context context, String str) {
        if (zzbEX == null) {
            synchronized (zzcx.class) {
                if (zzbEX == null) {
                    SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_install_referrer", 0);
                    zzbEX = sharedPreferences != null ? sharedPreferences.getString("referrer", "") : "";
                }
            }
        }
        return zzV(zzbEX, str);
    }

    public static void zzM(Context context, String str) {
        String zzV = zzV(str, "conv");
        if (zzV != null && zzV.length() > 0) {
            zzbEY.put(zzV, str);
            zzfu.zzd(context, "gtm_click_referrers", zzV, str);
        }
    }

    public static String zzV(String str, String str2) {
        if (str2 == null) {
            return str.length() > 0 ? str : null;
        } else {
            String str3 = "http://hostname/?";
            str = String.valueOf(str);
            return Uri.parse(str.length() != 0 ? str3.concat(str) : new String(str3)).getQueryParameter(str2);
        }
    }

    public static void zzfn(String str) {
        synchronized (zzcx.class) {
            zzbEX = str;
        }
    }
}
