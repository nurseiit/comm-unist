package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseUser;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ly {
    private Context mContext;
    private SharedPreferences zzBT = this.mContext.getSharedPreferences(String.format("com.google.firebase.auth.api.Store.%s", new Object[]{this.zzbXQ}), 0);
    private zzbgb zzaml = new zzbgb("StorageHelpers", new String[0]);
    private String zzbXQ;

    public ly(@NonNull Context context, @NonNull String str) {
        zzbo.zzu(context);
        this.zzbXQ = zzbo.zzcF(str);
        this.mContext = context.getApplicationContext();
    }

    @Nullable
    private final String zzi(@NonNull FirebaseUser firebaseUser) {
        JSONObject jSONObject = new JSONObject();
        if (!ls.class.isAssignableFrom(firebaseUser.getClass())) {
            return null;
        }
        ls lsVar = (ls) firebaseUser;
        try {
            jSONObject.put("cachedTokenState", lsVar.zzEH());
            jSONObject.put("applicationName", lsVar.zzEF().getName());
            jSONObject.put("type", "com.google.firebase.auth.internal.DefaultFirebaseUser");
            if (lsVar.zzEY() != null) {
                JSONArray jSONArray = new JSONArray();
                List zzEY = lsVar.zzEY();
                for (int i = 0; i < zzEY.size(); i++) {
                    jSONArray.put(((lq) zzEY.get(i)).zzmC());
                }
                jSONObject.put("userInfos", jSONArray);
            }
            jSONObject.put("anonymous", lsVar.isAnonymous());
            jSONObject.put("version", "2");
            return jSONObject.toString();
        } catch (Exception e) {
            this.zzaml.zza("Failed to turn object into JSON", e, new Object[0]);
            throw new ip(e);
        }
    }

    private final ls zzr(@NonNull JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("cachedTokenState");
            String string2 = jSONObject.getString("applicationName");
            boolean z = jSONObject.getBoolean("anonymous");
            String str = "2";
            String string3 = jSONObject.getString("version");
            if (string3 != null) {
                str = string3;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("userInfos");
            int length = jSONArray.length();
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                arrayList.add(lq.zzgv(jSONArray.getString(i)));
            }
            ls lsVar = new ls(FirebaseApp.getInstance(string2), arrayList);
            if (!TextUtils.isEmpty(string)) {
                lsVar.zza(kx.zzgu(string));
            }
            ((ls) lsVar.zzax(z)).zzgw(str);
            return lsVar;
        } catch (ip | ArrayIndexOutOfBoundsException | IllegalArgumentException | JSONException e) {
            this.zzaml.zzd(e);
            return null;
        }
    }

    public final void clear(String str) {
        this.zzBT.edit().remove(str).apply();
    }

    @Nullable
    public final FirebaseUser zzFa() {
        String string = this.zzBT.getString("com.google.firebase.auth.FIREBASE_USER", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            if (jSONObject.has("type")) {
                if ("com.google.firebase.auth.internal.DefaultFirebaseUser".equalsIgnoreCase(jSONObject.optString("type"))) {
                    return zzr(jSONObject);
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final void zza(@NonNull FirebaseUser firebaseUser, @NonNull kx kxVar) {
        zzbo.zzu(firebaseUser);
        zzbo.zzu(kxVar);
        this.zzBT.edit().putString(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", new Object[]{firebaseUser.getUid()}), kxVar.zzmC()).apply();
    }

    public final void zzg(@NonNull FirebaseUser firebaseUser) {
        zzbo.zzu(firebaseUser);
        String zzi = zzi(firebaseUser);
        if (!TextUtils.isEmpty(zzi)) {
            this.zzBT.edit().putString("com.google.firebase.auth.FIREBASE_USER", zzi).apply();
        }
    }

    public final kx zzh(@NonNull FirebaseUser firebaseUser) {
        zzbo.zzu(firebaseUser);
        String string = this.zzBT.getString(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", new Object[]{firebaseUser.getUid()}), null);
        return string != null ? kx.zzgu(string) : null;
    }
}
