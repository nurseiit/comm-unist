package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzayv {
    private static final zzayo zzapq = new zzayo("MetadataUtils");
    private static final String[] zzayU = new String[]{"Z", "+hh", "+hhmm", "+hh:mm"};
    private static final String zzayV;

    static {
        String valueOf = String.valueOf("yyyyMMdd'T'HHmmss");
        String valueOf2 = String.valueOf(zzayU[0]);
        zzayV = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public static String zza(Calendar calendar) {
        if (calendar == null) {
            zzapq.zzb("Calendar object cannot be null", new Object[0]);
            return null;
        }
        String str = zzayV;
        if (calendar.get(11) == 0 && calendar.get(12) == 0 && calendar.get(13) == 0) {
            str = "yyyyMMdd";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
        simpleDateFormat.setTimeZone(calendar.getTimeZone());
        String format = simpleDateFormat.format(calendar.getTime());
        if (format.endsWith("+0000")) {
            format = format.replace("+0000", zzayU[0]);
        }
        return format;
    }

    public static void zza(List<WebImage> list, JSONObject jSONObject) {
        try {
            list.clear();
            JSONArray jSONArray = jSONObject.getJSONArray("images");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    list.add(new WebImage(jSONArray.getJSONObject(i)));
                } catch (IllegalArgumentException unused) {
                }
            }
        } catch (JSONException unused2) {
        }
    }

    public static void zza(JSONObject jSONObject, List<WebImage> list) {
        if (list != null && !list.isEmpty()) {
            JSONArray jSONArray = new JSONArray();
            for (WebImage toJson : list) {
                jSONArray.put(toJson.toJson());
            }
            try {
                jSONObject.put("images", jSONArray);
            } catch (JSONException unused) {
            }
        }
    }

    public static Calendar zzco(String str) {
        if (TextUtils.isEmpty(str)) {
            zzapq.zzb("Input string is empty or null", new Object[0]);
            return null;
        }
        String zzcp = zzcp(str);
        if (TextUtils.isEmpty(zzcp)) {
            zzapq.zzb("Invalid date format", new Object[0]);
            return null;
        }
        str = zzcq(str);
        String str2 = "yyyyMMdd";
        if (!TextUtils.isEmpty(str)) {
            zzcp = String.valueOf(zzcp);
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(zzcp).length() + 1) + String.valueOf(str).length());
            stringBuilder.append(zzcp);
            stringBuilder.append("T");
            stringBuilder.append(str);
            zzcp = stringBuilder.toString();
            str2 = str.length() == 6 ? "yyyyMMdd'T'HHmmss" : zzayV;
        }
        Calendar instance = GregorianCalendar.getInstance();
        try {
            instance.setTime(new SimpleDateFormat(str2).parse(zzcp));
            return instance;
        } catch (ParseException e) {
            zzapq.zzb("Error parsing string: %s", e.getMessage());
            return null;
        }
    }

    private static String zzcp(String str) {
        if (TextUtils.isEmpty(str)) {
            zzapq.zzb("Input string is empty or null", new Object[0]);
            return null;
        }
        try {
            return str.substring(0, 8);
        } catch (IndexOutOfBoundsException e) {
            zzapq.zze("Error extracting the date: %s", e.getMessage());
            return null;
        }
    }

    private static String zzcq(String str) {
        if (TextUtils.isEmpty(str)) {
            zzapq.zzb("string is empty or null", new Object[0]);
            return null;
        }
        int indexOf = str.indexOf(84);
        int i = indexOf + 1;
        if (indexOf != 8) {
            zzapq.zzb("T delimeter is not found", new Object[0]);
            return null;
        }
        indexOf = 1;
        try {
            str = str.substring(i);
            if (str.length() == 6) {
                return str;
            }
            char charAt = str.charAt(6);
            if (charAt == '+' || charAt == '-') {
                i = str.length();
                if (!(i == zzayU[1].length() + 6 || i == zzayU[2].length() + 6 || i == zzayU[3].length() + 6)) {
                    indexOf = 0;
                }
                return indexOf != 0 ? str.replaceAll("([\\+\\-]\\d\\d):(\\d\\d)", "$1$2") : null;
            } else if (charAt != 'Z' || str.length() != zzayU[0].length() + 6) {
                return null;
            } else {
                str = String.valueOf(str.substring(0, str.length() - 1));
                String valueOf = String.valueOf("+0000");
                return valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
            }
        } catch (IndexOutOfBoundsException e) {
            zzapq.zzb("Error extracting the time substring: %s", e.getMessage());
            return null;
        }
    }
}
