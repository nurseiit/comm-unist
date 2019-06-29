package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class cb {
    public static zzcxn zzO(Object obj) throws JSONException {
        String string;
        JSONArray jSONArray;
        JSONArray jSONArray2;
        JSONArray jSONArray3;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            string = jSONObject.getString("name");
            jSONArray = jSONObject.getJSONArray("params");
            jSONArray2 = jSONObject.getJSONArray("instructions");
        } else if (obj instanceof JSONArray) {
            jSONArray2 = (JSONArray) obj;
            int i = 3;
            int i2 = 1;
            zzbo.zzaf(jSONArray2.length() >= 3);
            string = jSONArray2.getString(1);
            jSONArray3 = jSONArray2.getJSONArray(2);
            JSONArray jSONArray4 = new JSONArray();
            while (i2 < jSONArray3.length()) {
                zzbo.zzaf(jSONArray3.get(i2) instanceof String);
                jSONArray4.put(jSONArray3.get(i2));
                i2++;
            }
            JSONArray jSONArray5 = new JSONArray();
            while (i < jSONArray2.length()) {
                jSONArray5.put(jSONArray2.get(i));
                i++;
            }
            jSONArray2 = jSONArray5;
            jSONArray = jSONArray4;
        } else {
            throw new IllegalArgumentException("invalid JSON in runtime section");
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
            arrayList.add(jSONArray.getString(i3));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i4 = 0; i4 < jSONArray2.length(); i4++) {
            jSONArray3 = jSONArray2.getJSONArray(i4);
            if (jSONArray3.length() != 0) {
                arrayList2.add(zzd(jSONArray3));
            }
        }
        return new zzcxn(null, string, arrayList, arrayList2);
    }

    private static dg zza(JSONArray jSONArray, List<dd> list, List<dd> list2) throws ca, JSONException {
        di diVar = new di();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONArray jSONArray2 = jSONArray.getJSONArray(i);
            int i2 = 1;
            if (jSONArray2.getString(0).equals("if")) {
                while (i2 < jSONArray2.length()) {
                    diVar.zzc((dd) list2.get(jSONArray2.getInt(i2)));
                    i2++;
                }
            } else if (jSONArray2.getString(0).equals("unless")) {
                while (i2 < jSONArray2.length()) {
                    diVar.zzd((dd) list2.get(jSONArray2.getInt(i2)));
                    i2++;
                }
            } else if (jSONArray2.getString(0).equals(ProductAction.ACTION_ADD)) {
                while (i2 < jSONArray2.length()) {
                    diVar.zze((dd) list.get(jSONArray2.getInt(i2)));
                    i2++;
                }
            } else if (jSONArray2.getString(0).equals("block")) {
                while (i2 < jSONArray2.length()) {
                    diVar.zzf((dd) list.get(jSONArray2.getInt(i2)));
                    i2++;
                }
            } else {
                String str = "Unknown Rule property: ";
                String valueOf = String.valueOf(jSONArray2.getString(0));
                zzfQ(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        }
        return diVar.zzDf();
    }

    private static dd zzb(JSONObject jSONObject, List<String> list) throws ca, JSONException {
        df dfVar = new df();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            dm zzDj = zzb(jSONObject.get(str), (List) list).zzDj();
            if ("push_after_evaluate".equals(str)) {
                dfVar.zzb(zzDj);
            } else {
                dfVar.zza(str, zzDj);
            }
        }
        return dfVar.zzDa();
    }

    private static do zzb(Object obj, List<String> list) throws ca, JSONException {
        String valueOf;
        StringBuilder stringBuilder;
        if (obj instanceof JSONArray) {
            do zzb;
            JSONArray jSONArray = (JSONArray) obj;
            String string = jSONArray.getString(0);
            int i = 2;
            if (string.equals("escape")) {
                zzb = zzb(jSONArray.get(1), (List) list);
                while (i < jSONArray.length()) {
                    zzb.zzbF(jSONArray.getInt(i));
                    i++;
                }
            } else {
                do doVar;
                ArrayList arrayList;
                int i2;
                if (string.equals("list")) {
                    arrayList = new ArrayList();
                    for (i2 = 1; i2 < jSONArray.length(); i2++) {
                        arrayList.add(zzb(jSONArray.get(i2), (List) list).zzDj());
                    }
                    doVar = new do(2, arrayList);
                } else if (string.equals("map")) {
                    HashMap hashMap = new HashMap();
                    for (i2 = 1; i2 < jSONArray.length(); i2 += 2) {
                        hashMap.put(zzb(jSONArray.get(i2), (List) list).zzDj(), zzb(jSONArray.get(i2 + 1), (List) list).zzDj());
                    }
                    doVar = new do(3, hashMap);
                } else if (string.equals("macro")) {
                    zzb = new do(4, list.get(jSONArray.getInt(1)));
                    zzb.zzau(true);
                } else if (string.equals("template")) {
                    arrayList = new ArrayList();
                    for (i2 = 1; i2 < jSONArray.length(); i2++) {
                        arrayList.add(zzb(jSONArray.get(i2), (List) list).zzDj());
                    }
                    doVar = new do(7, arrayList);
                } else {
                    valueOf = String.valueOf(obj);
                    stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 20);
                }
                doVar.zzau(true);
                return doVar;
            }
            return zzb;
        } else if (obj instanceof Boolean) {
            return new do(8, obj);
        } else {
            if (obj instanceof Integer) {
                return new do(6, obj);
            }
            if (obj instanceof String) {
                return new do(1, obj);
            }
            valueOf = String.valueOf(obj);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 20);
        }
        stringBuilder.append("Invalid value type: ");
        stringBuilder.append(valueOf);
        zzfQ(stringBuilder.toString());
        return null;
    }

    private static List<dd> zzb(JSONArray jSONArray, List<String> list) throws JSONException, ca {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(zzb(jSONArray.getJSONObject(i), (List) list));
        }
        return arrayList;
    }

    private static List<String> zzc(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getJSONObject(i).getString("instance_name"));
        }
        return arrayList;
    }

    private static ea zzd(JSONArray jSONArray) throws JSONException {
        zzbo.zzaf(jSONArray.length() > 0);
        String string = jSONArray.getString(0);
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                JSONArray jSONArray2 = (JSONArray) obj;
                if (jSONArray2.length() != 0) {
                    obj = zzd(jSONArray2);
                } else {
                }
            } else {
                obj = obj == JSONObject.NULL ? dv.zzbLt : ed.zzQ(obj);
            }
            arrayList.add(obj);
        }
        return new ea(string, arrayList);
    }

    static db zzfO(String str) throws JSONException, ca {
        Object obj = new JSONObject(str).get("resource");
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            dc dcVar = new dc();
            dcVar.zzfW(jSONObject.optString("version"));
            List zzc = zzc(jSONObject.getJSONArray("macros"));
            List zzb = zzb(jSONObject.getJSONArray("tags"), zzc);
            List zzb2 = zzb(jSONObject.getJSONArray("predicates"), zzc);
            for (dd zzb3 : zzb(jSONObject.getJSONArray("macros"), zzc)) {
                dcVar.zzb(zzb3);
            }
            JSONArray jSONArray = jSONObject.getJSONArray("rules");
            for (int i = 0; i < jSONArray.length(); i++) {
                dcVar.zza(zza(jSONArray.getJSONArray(i), zzb, zzb2));
            }
            return dcVar.zzCY();
        }
        throw new ca("Resource map not found");
    }

    @Nullable
    static dj zzfP(String str) throws JSONException, ca {
        JSONObject jSONObject = new JSONObject(str);
        JSONArray optJSONArray = jSONObject.optJSONArray("runtime");
        if (optJSONArray == null) {
            return null;
        }
        dl dlVar = new dl();
        Object obj = jSONObject.get("resource");
        if (obj instanceof JSONObject) {
            dlVar.zzfX(((JSONObject) obj).optString("version"));
            for (int i = 0; i < optJSONArray.length(); i++) {
                Object obj2 = optJSONArray.get(i);
                if (!(obj2 instanceof JSONArray) || ((JSONArray) obj2).length() != 0) {
                    dlVar.zza(zzO(obj2));
                }
            }
            return dlVar.zzDh();
        }
        throw new ca("Resource map not found");
    }

    private static void zzfQ(String str) throws ca {
        zzcvk.e(str);
        throw new ca(str);
    }
}
