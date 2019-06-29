package com.google.android.gms.internal;

import android.support.v4.util.SimpleArrayMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzzh implements zzyv<zznu> {
    private final boolean zzSe;

    public zzzh(boolean z) {
        this.zzSe = z;
    }

    private static <K, V> SimpleArrayMap<K, V> zza(SimpleArrayMap<K, Future<V>> simpleArrayMap) throws InterruptedException, ExecutionException {
        SimpleArrayMap simpleArrayMap2 = new SimpleArrayMap();
        for (int i = 0; i < simpleArrayMap.size(); i++) {
            simpleArrayMap2.put(simpleArrayMap.keyAt(i), ((Future) simpleArrayMap.valueAt(i)).get());
        }
        return simpleArrayMap2;
    }

    public final /* synthetic */ zzoa zza(zzyn zzyn, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        SimpleArrayMap simpleArrayMap2 = new SimpleArrayMap();
        zzajm zzd = zzyn.zzd(jSONObject);
        zzajm zzc = zzyn.zzc(jSONObject, "video");
        JSONArray jSONArray = jSONObject.getJSONArray("custom_assets");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            String string = jSONObject2.getString("type");
            if ("string".equals(string)) {
                simpleArrayMap2.put(jSONObject2.getString("name"), jSONObject2.getString("string_value"));
            } else if ("image".equals(string)) {
                simpleArrayMap.put(jSONObject2.getString("name"), zzyn.zza(jSONObject2, "image_value", this.zzSe));
            } else {
                String str = "Unknown custom asset type: ";
                string = String.valueOf(string);
                zzajc.zzaT(string.length() != 0 ? str.concat(string) : new String(str));
            }
        }
        zzaka zzb = zzyn.zzb(zzc);
        return new zznu(jSONObject.getString("custom_template_id"), zza(simpleArrayMap), simpleArrayMap2, (zznn) zzd.get(), zzb != null ? zzb.zziH() : null, zzb != null ? zzb.getView() : null);
    }
}
