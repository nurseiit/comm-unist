package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class lx {
    private static List<Object> zze(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                obj = zze((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = zzq((JSONObject) obj);
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    @Nullable
    public static Map<String, Object> zzgx(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return jSONObject != JSONObject.NULL ? zzq(jSONObject) : null;
        } catch (Exception e) {
            Log.d("RawUserInfoParser", "Failed to parse JSONObject into Map.");
            throw new ip(e);
        }
    }

    private static Map<String, Object> zzq(JSONObject jSONObject) throws JSONException {
        ArrayMap arrayMap = new ArrayMap();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            Object obj = jSONObject.get(str);
            if (obj instanceof JSONArray) {
                obj = zze((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = zzq((JSONObject) obj);
            }
            arrayMap.put(str, obj);
        }
        return arrayMap;
    }
}
