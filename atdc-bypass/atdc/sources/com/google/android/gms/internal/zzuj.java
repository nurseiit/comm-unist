package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzuj {
    private static String zza(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    public static List<String> zza(JSONObject jSONObject, String str) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(optJSONArray.length());
        for (int i = 0; i < optJSONArray.length(); i++) {
            arrayList.add(optJSONArray.getString(i));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static void zza(Context context, String str, zzaff zzaff, String str2, boolean z, List<String> list) {
        if (list != null && !list.isEmpty()) {
            String str3 = z ? "1" : "0";
            for (String zza : list) {
                String zza2 = zza(zza(zza(zza(zza(zza(zza(zza2, "@gw_adlocid@", str2), "@gw_adnetrefresh@", str3), "@gw_qdata@", zzaff.zzXN.zzMf), "@gw_sdkver@", str), "@gw_sessid@", zzbs.zzbD().getSessionId()), "@gw_seqnum@", zzaff.zzSC), "@gw_adnetstatus@", zzaff.zzXO);
                if (zzaff.zzMG != null) {
                    zza2 = zza(zza(zza2, "@gw_adnetid@", zzaff.zzMG.zzLI), "@gw_allocid@", zzaff.zzMG.zzLK);
                }
                zza2 = zzaez.zzb(zza2, context);
                zzbs.zzbz();
                zzagz.zzd(context, str, zza2);
            }
        }
    }

    public static boolean zza(String str, int[] iArr) {
        if (TextUtils.isEmpty(str) || iArr.length != 2) {
            return false;
        }
        String[] split = str.split("x");
        if (split.length != 2) {
            return false;
        }
        try {
            iArr[0] = Integer.parseInt(split[0]);
            iArr[1] = Integer.parseInt(split[1]);
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
