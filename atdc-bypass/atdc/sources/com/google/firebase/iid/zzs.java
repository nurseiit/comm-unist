package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement.Param;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

final class zzs {
    private static final long zzckR = TimeUnit.DAYS.toMillis(7);
    private long timestamp;
    final String zzbPJ;
    private String zzbgW;

    private zzs(String str, String str2, long j) {
        this.zzbPJ = str;
        this.zzbgW = str2;
        this.timestamp = j;
    }

    static String zzc(String str, String str2, long j) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", str);
            jSONObject.put("appVersion", str2);
            jSONObject.put(Param.TIMESTAMP, j);
            return jSONObject.toString();
        } catch (JSONException e) {
            str = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 24);
            stringBuilder.append("Failed to encode token: ");
            stringBuilder.append(str);
            Log.w("InstanceID/Store", stringBuilder.toString());
            return null;
        }
    }

    static zzs zzho(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("{")) {
            return new zzs(str, null, 0);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new zzs(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong(Param.TIMESTAMP));
        } catch (JSONException e) {
            str = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 23);
            stringBuilder.append("Failed to parse token: ");
            stringBuilder.append(str);
            Log.w("InstanceID/Store", stringBuilder.toString());
            return null;
        }
    }

    /* Access modifiers changed, original: final */
    public final boolean zzhp(String str) {
        return System.currentTimeMillis() > this.timestamp + zzckR || !str.equals(this.zzbgW);
    }
}
