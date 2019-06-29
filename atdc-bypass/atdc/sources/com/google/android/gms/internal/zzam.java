package com.google.android.gms.internal;

import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

public final class zzam {
    public static String zza(Map<String, String> map) {
        String str = "ISO-8859-1";
        String str2 = (String) map.get("Content-Type");
        if (str2 != null) {
            String[] split = str2.split(";");
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=");
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return str;
    }

    public static zzc zzb(zzn zzn) {
        long j;
        Object obj;
        long j2;
        Object obj2;
        zzn zzn2 = zzn;
        long currentTimeMillis = System.currentTimeMillis();
        Map map = zzn2.zzy;
        String str = (String) map.get("Date");
        long zzf = str != null ? zzf(str) : 0;
        str = (String) map.get("Cache-Control");
        if (str != null) {
            String[] split = str.split(",");
            j = 0;
            obj = null;
            j2 = 0;
            for (String trim : split) {
                String trim2 = trim2.trim();
                if (trim2.equals("no-cache") || trim2.equals("no-store")) {
                    return null;
                }
                if (trim2.startsWith("max-age=")) {
                    try {
                        j = Long.parseLong(trim2.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (trim2.startsWith("stale-while-revalidate=")) {
                    j2 = Long.parseLong(trim2.substring(23));
                } else if (trim2.equals("must-revalidate") || trim2.equals("proxy-revalidate")) {
                    obj = 1;
                }
            }
            obj2 = 1;
        } else {
            j = 0;
            obj = null;
            j2 = 0;
            obj2 = null;
        }
        str = (String) map.get("Expires");
        long zzf2 = str != null ? zzf(str) : 0;
        str = (String) map.get("Last-Modified");
        long zzf3 = str != null ? zzf(str) : 0;
        str = (String) map.get("ETag");
        if (obj2 != null) {
            long j3 = currentTimeMillis + (j * 1000);
            currentTimeMillis = obj != null ? j3 : j3 + (j2 * 1000);
            zzf2 = j3;
        } else if (zzf <= 0 || zzf2 < zzf) {
            currentTimeMillis = 0;
            zzf2 = currentTimeMillis;
        } else {
            zzf2 = currentTimeMillis + (zzf2 - zzf);
            currentTimeMillis = zzf2;
        }
        zzc zzc = new zzc();
        zzc.data = zzn2.data;
        zzc.zza = str;
        zzc.zze = zzf2;
        zzc.zzd = currentTimeMillis;
        zzc.zzb = zzf;
        zzc.zzc = zzf3;
        zzc.zzf = map;
        return zzc;
    }

    private static long zzf(String str) {
        try {
            return DateUtils.parseDate(str).getTime();
        } catch (DateParseException unused) {
            return 0;
        }
    }
}
