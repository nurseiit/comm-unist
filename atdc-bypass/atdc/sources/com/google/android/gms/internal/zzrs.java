package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzrs implements zzrd {
    private final Object mLock = new Object();
    private final Map<String, zzrt> zzJI = new HashMap();

    public final void zza(zzaka zzaka, Map<String, String> map) {
        String str = (String) map.get("id");
        String str2 = (String) map.get("fail");
        map.get("fail_reason");
        String str3 = (String) map.get("result");
        synchronized (this.mLock) {
            if (((zzrt) this.zzJI.remove(str)) == null) {
                str3 = "Received result for unexpected method invocation: ";
                str = String.valueOf(str);
                zzajc.zzaT(str.length() != 0 ? str3.concat(str) : new String(str3));
                return;
            } else if (!TextUtils.isEmpty(str2)) {
                return;
            } else if (str3 == null) {
                return;
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str3);
                } catch (JSONException e) {
                    e.getMessage();
                }
            }
        }
    }
}
