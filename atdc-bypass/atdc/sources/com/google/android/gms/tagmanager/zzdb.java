package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.ei;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class zzdb {
    private static Object zzG(Object obj) throws JSONException {
        if (obj instanceof JSONArray) {
            throw new RuntimeException("JSONArrays are not supported");
        } else if (JSONObject.NULL.equals(obj)) {
            throw new RuntimeException("JSON nulls are not supported");
        } else if (!(obj instanceof JSONObject)) {
            return obj;
        } else {
            JSONObject jSONObject = (JSONObject) obj;
            HashMap hashMap = new HashMap();
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                hashMap.put(str, zzG(jSONObject.get(str)));
            }
            return hashMap;
        }
    }

    public static ek zzfo(String str) throws JSONException {
        zzbr zzI = zzgk.zzI(zzG(new JSONObject(str)));
        el zzDz = ek.zzDz();
        for (int i = 0; i < zzI.zzlF.length; i++) {
            zzDz.zzc(ei.zzDx().zzb(zzbg.INSTANCE_NAME.toString(), zzI.zzlF[i]).zzb(zzbg.FUNCTION.toString(), zzgk.zzfy(zzt.zzAG())).zzb(zzt.zzAH(), zzI.zzlG[i]).zzDy());
        }
        return zzDz.zzDB();
    }
}
